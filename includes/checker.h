/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   checker.h                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mchuang <mchuang@student.42.us.org>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/11/18 19:21:05 by mchuang           #+#    #+#             */
/*   Updated: 2019/11/18 19:21:13 by mchuang          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef CHECKER_H
# define CHECKER_H
# include "libft.h"
# include "get_next_line.h"
# include "stack.h"
# include "queue.h"
# include "instructions.h"
# include "general_util.h"
# include <limits.h>

typedef struct	s_ckr
{
	t_stack		*a;
	t_stack		*b;
	t_queue		*ins;
	int			v;
	int			c;
}				t_ckr;

t_ckr			*set_ckr_structs(void);
void			clean_ckr_structs(t_ckr *ckr);
int				parse_input_arg(t_ckr *ckr, char **n);

#endif