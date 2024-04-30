#ifndef _cm_h
#define _cm_h

#include <stdint.h>
#include <stdbool.h>
#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */


/* Clause SETS */
typedef enum
{
    cm__stopped,
    cm__running
    
} cm__cm_STATUS;
#define cm__cm_STATUS__max 2

/* Clause CONCRETE_CONSTANTS */
/* Basic constants */
/* Array and record constants */

/* Clause CONCRETE_VARIABLES */

extern void cm__INITIALISATION(void);

/* Clause OPERATIONS */

extern void cm__M_state(void);
extern void cm__buy_product(int32_t *bp);
extern void cm__give_product(int32_t *gp);

#ifdef __cplusplus
}
#endif /* __cplusplus */


#endif /* _cm_h */