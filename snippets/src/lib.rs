extern crate cgmath;
use cgmath::*;

use std::arch::x86_64::*;

#[no_mangle]
pub fn snippet_vector1_add(a: Vector1<f32>,b: Vector1<f32>) -> Vector1<f32> {
    a + b
}

#[no_mangle]
pub fn snippet_vector2_add(a: Vector2<f32>,b: Vector2<f32>) -> Vector2<f32> {
    a + b
}

#[no_mangle]
pub fn snippet_vector3_add(a: Vector3<f32>,b: Vector3<f32>) -> Vector3<f32> {
    a + b
}

#[no_mangle]
pub fn snippet_vector4_add(a: Vector4<f32>,b: Vector4<f32>) -> Vector4<f32> {
    a + b
}

#[no_mangle]
pub fn snippet_ref_vector4_sub(a: &Vector4<f32>,b: &Vector4<f32>) -> Vector4<f32> {
    a - b
}

#[no_mangle]
pub fn snippet_m128_mul(a: __m128,b: __m128) -> __m128 {
    unsafe {
        _mm_mul_ps(a, b)
    }
}

