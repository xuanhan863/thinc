from ..structs cimport FeatureC
from ..structs cimport ConstantsC

from ..typedefs cimport len_t
from ..typedefs cimport idx_t
from ..typedefs cimport weight_t


cdef void dot_plus__ELU(weight_t** fwd, weight_t* averages,
        const weight_t* W, const len_t* shape, int nr_below, int nr_above,
        const ConstantsC* hp) nogil
 

cdef void dot_plus__ReLu(weight_t** fwd, weight_t* averages,
        const weight_t* W, const len_t* shape, int nr_below, int nr_above,
        const ConstantsC* hp) nogil
 

cdef void dot_plus__residual__ELU(weight_t** fwd, weight_t* averages,
        const weight_t* W, const len_t* shape, int nr_below, int nr_above,
        const ConstantsC* hp) nogil


cdef void dot__normalize__dot_plus__ELU(weight_t** fwd, weight_t* averages,
        const weight_t* W, const len_t* shape, int nr_before, int nr_above,
        const ConstantsC* hp) nogil


cdef void dot_plus(weight_t* out,
        const weight_t* bias, len_t nr_out,
        const weight_t* x, len_t nr_in,
        const weight_t* W) nogil
  

cdef void softmax(weight_t* out, len_t nr_out) nogil


cdef void ELU(weight_t* out, len_t nr_out) nogil