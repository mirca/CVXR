##
## We shadow a CPP class with an R6 class using the (almost) same class name!
## Some utility functions
##
rcppMungedName <- function(cppClassName, methodName, thisPkg = getPackageName()) {
    ## Remove the CVXCanon. prefix from all the class names.
    paste0(thisPkg, "_", gsub("^CVXcanon\\.", "", cppClassName) , "__", methodName)
}

ecos.control <- function(maxit = 100L,
                         feastol = 1e-8,
                         reltol = 1e-8,
                         abstol = 1e-8,
                         feastol_inacc = 1e-4,
                         abstol_inacc = 5e-5,
                         reltol_inacc = 5e-5,
                         verbose = 0L,
                         mi_max_iters = 1000L,
                         mi_int_tol = 1e-4,
                         mi_abs_eps = 1e-6,
                         mi_rel_eps = 1e-6) {
    list(maxit = maxit,
         feastol = feastol,
         reltol = reltol,
         abstol = abstol,
         feastol_inacc = feastol_inacc,
         abstol_inacc = abstol_inacc,
         reltol_inacc = reltol_inacc,
         verbose = verbose,
         max_iters = mi_max_iters)

    ## list(MAXIT = maxit,
    ##      FEASTOL = feastol,
    ##      RELTOL = reltol,
    ##      ABSTOL = abstol,
    ##      FEASTOL_INACC = feastol_inacc,
    ##      ABSTOL_INACC = abstol_inacc,
    ##      RELTOL_INACC = reltol_inacc,
    ##      VERBOSE = verbose,
    ##      MI_MAX_ITERS = mi_max_iters,
    ##      MI_INT_TOL = mi_int_tol,
    ##      MI_ABS_EPS = mi_abs_eps,
    ##      MI_REL_EPS = mi_rel_eps)
}

