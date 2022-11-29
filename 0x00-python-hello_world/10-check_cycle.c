/*
 * File: 10-check_cycle.c
 * Auth: Boris Ikula
 */

#include <stdlib.h>
#include "lists.h"

/**
 * check_cycle - Checks if a singly-linked list contains a cycle.
 * @list: A singly-linked list.
 *
 * Return: 0 - if there is no cycle.
 *         1 - if there is a cycle.
 */
int check_cycle(listint_t *list)
{
	listint_t *batman, *flash;

	if (!list || !list->next)
		return (0);

	batman = list->next;
	flash = list->next->next;

	while (batman && flash && flash->next)
	{
		if (batman == flash)
			return (1);

		batman = batman->next;
		flash = flash->next->next;
	}

	return (0);
}
