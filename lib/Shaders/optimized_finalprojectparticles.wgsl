struct tint_symbol {
  /* @offset(0) */
  tint_symbol_1 : vec2f,
  /* @offset(8) */
  tint_symbol_2 : vec2f,
  /* @offset(16) */
  tint_symbol_3 : vec2f,
  /* @offset(24) */
  tint_symbol_4 : f32,
  /* @offset(28) */
  tint_symbol_5 : f32,
  /* @offset(32) */
  tint_symbol_6 : vec4f,
}

alias RTArr = array<tint_symbol>;

struct tint_symbol_62_block {
  /* @offset(0) */
  inner : RTArr,
}

struct tint_symbol_7 {
  /* @offset(0) */
  tint_symbol_8 : vec2f,
  /* @offset(8) */
  tint_symbol_9 : f32,
  /* @offset(12) */
  tint_symbol_10 : f32,
  /* @offset(16) */
  tint_symbol_11 : f32,
  /* @offset(20) */
  tint_symbol_12 : f32,
  /* @offset(24) */
  tint_symbol_13 : f32,
  /* @offset(28) */
  tint_symbol_14 : f32,
  /* @offset(32) */
  tint_symbol_15 : f32,
  /* @offset(36) */
  tint_symbol_16 : f32,
  /* @offset(40) */
  tint_symbol_17 : vec2f,
}

struct tint_symbol_64_block {
  /* @offset(0) */
  inner : tint_symbol_7,
}

struct tint_symbol_18 {
  /* @offset(0) */
  tint_symbol_19 : vec4f,
  /* @offset(16) */
  tint_symbol_6 : vec4f,
}

var<private> tint_symbol_66_1 : u32;

var<private> tint_symbol_71_1 : u32;

var<private> tint_symbol_19_1 = vec4f();

var<private> tint_symbol_6_1 = vec4f();

var<private> tint_symbol_6_2 : vec4f;

var<private> value = vec4f();

var<private> tint_symbol_89_1 : vec3u;

@group(0) @binding(0) var<storage, read_write> tint_symbol_62 : tint_symbol_62_block;

@group(0) @binding(1) var<storage, read_write> tint_symbol_63 : tint_symbol_62_block;

@group(0) @binding(2) var<uniform> tint_symbol_64 : tint_symbol_64_block;

fn tint_ftou(v : f32) -> u32 {
  return select(4294967295u, select(u32(v), 0u, (v < 0.0f)), (v < 4294967040.0f));
}

const x_66 = vec2f(1.0f);

const x_63 = vec2f(-1.0f);

fn tint_symbol_65(tint_symbol_66 : u32) -> vec2f {
  var tint_return_flag = false;
  var tint_return_value = vec2f();
  switch(tint_symbol_66) {
    case 4u: {
      tint_return_flag = true;
      tint_return_value = x_66;
    }
    case 3u: {
      tint_return_flag = true;
      tint_return_value = x_63;
    }
    case 2u: {
      tint_return_flag = true;
      tint_return_value = x_66;
    }
    case 1u: {
      tint_return_flag = true;
      tint_return_value = vec2f(1.0f, -1.0f);
    }
    case 0u: {
      tint_return_flag = true;
      tint_return_value = x_63;
    }
    default: {
      tint_return_flag = true;
      tint_return_value = vec2f(-1.0f, 1.0f);
    }
  }
  let x_68 = tint_return_value;
  return x_68;
}

fn tint_symbol_67(tint_symbol_68 : f32) -> f32 {
  return fract((sin(tint_symbol_68) * 43758.546875f));
}

fn tint_symbol_69() -> u32 {
  let x_87 = tint_symbol_64.inner.tint_symbol_16;
  let x_81 = tint_ftou(clamp(x_87, 0.0f, 7.0f));
  return x_81;
}

fn tint_symbol_70_inner(tint_symbol_66_2 : u32, tint_symbol_71 : u32) -> tint_symbol_18 {
  var tint_symbol_19 = vec2f();
  var tint_symbol_86 = tint_symbol_18(vec4f(), vec4f());
  var x_112 : f32;
  let x_97 = tint_symbol_62.inner[tint_symbol_71];
  let x_100 = clamp((0.44999998807907104492f + (length(x_97.tint_symbol_3) * 30.0f)), 0.44999998807907104492f, 1.35000002384185791016f);
  x_112 = ((0.00100000004749745131f * x_97.tint_symbol_5) * tint_symbol_64.inner.tint_symbol_13);
  let x_113 = tint_symbol_65(tint_symbol_66_2);
  tint_symbol_19 = (x_97.tint_symbol_1 + (x_113 * x_112));
  if ((tint_symbol_64.inner.tint_symbol_14 == 1.0f)) {
    var x_126 : vec2f;
    var x_127 : f32;
    x_126 = (x_97.tint_symbol_1 - x_97.tint_symbol_2);
    x_127 = length(x_126);
    if ((x_127 > 0.00009999999747378752f)) {
      let x_132 = normalize(x_126);
      let x_136 = vec2f(-(x_132.y), x_132.x);
      let x_138 = (x_112 * 0.80000001192092895508f);
      let x_140 = (x_112 * 0.40000000596046447754f);
      let x_145 = x_97.tint_symbol_2;
      let x_148 = (x_97.tint_symbol_1 + (x_132 * min((x_127 * 8.0f), 0.07999999821186065674f)));
      switch(tint_symbol_66_2) {
        case 4u: {
          tint_symbol_19 = (x_148 + (x_136 * x_140));
        }
        case 3u: {
          tint_symbol_19 = (x_145 - (x_136 * x_138));
        }
        case 2u: {
          tint_symbol_19 = (x_148 + (x_136 * x_140));
        }
        case 1u: {
          tint_symbol_19 = (x_148 - (x_136 * x_140));
        }
        case 0u: {
          tint_symbol_19 = (x_145 - (x_136 * x_138));
        }
        default: {
          tint_symbol_19 = (x_145 + (x_136 * x_138));
        }
      }
    }
  }
  tint_symbol_86.tint_symbol_19 = vec4f(tint_symbol_19.x, tint_symbol_19.y, 0.0f, 1.0f);
  let x_182 = (x_97.tint_symbol_6.xyz * x_100);
  tint_symbol_86.tint_symbol_6 = vec4f(x_182.x, x_182.y, x_182.z, x_97.tint_symbol_6.w);
  let x_189 = tint_symbol_86;
  return x_189;
}

fn tint_symbol_70_1() {
  let x_195 = tint_symbol_66_1;
  let x_196 = tint_symbol_71_1;
  let x_194 = tint_symbol_70_inner(x_195, x_196);
  tint_symbol_19_1 = x_194.tint_symbol_19;
  tint_symbol_6_1 = x_194.tint_symbol_6;
  return;
}

struct tint_symbol_70_out {
  @builtin(position)
  tint_symbol_19_1_1 : vec4f,
  @location(0)
  tint_symbol_6_1_1 : vec4f,
}

@vertex
fn vertexMain(@builtin(vertex_index) tint_symbol_66_1_param : u32, @builtin(instance_index) tint_symbol_71_1_param : u32) -> tint_symbol_70_out {
  tint_symbol_66_1 = tint_symbol_66_1_param;
  tint_symbol_71_1 = tint_symbol_71_1_param;
  tint_symbol_70_1();
  return tint_symbol_70_out(tint_symbol_19_1, tint_symbol_6_1);
}

fn tint_symbol_87_inner(tint_symbol_6 : vec4f) -> vec4f {
  return tint_symbol_6;
}

fn tint_symbol_87_1() {
  let x_206 = tint_symbol_6_2;
  let x_205 = tint_symbol_87_inner(x_206);
  value = x_205;
  return;
}

struct tint_symbol_87_out {
  @location(0)
  value_1 : vec4f,
}

@fragment
fn fragmentMain(@location(0) tint_symbol_6_2_param : vec4f) -> tint_symbol_87_out {
  tint_symbol_6_2 = tint_symbol_6_2_param;
  tint_symbol_87_1();
  return tint_symbol_87_out(value);
}

const x_447 = vec3f(0.94901961088180541992f, 0.49019607901573181152f, 0.04705882444977760315f);

const x_617 = vec3f(0.20000000298023223877f, 0.55000001192092895508f, 0.94999998807907104492f);

const x_619 = vec3f(0.44999998807907104492f, 0.89999997615814208984f, 1.0f);

fn tint_symbol_88_inner(tint_symbol_89 : vec3u) {
  var tint_symbol_1 = tint_symbol(vec2f(), vec2f(), vec2f(), 0.0f, 0.0f, vec4f());
  var x_620 = vec3f();
  var x_673 = vec3f();
  var x_696 = vec3f();
  var x_238 : bool;
  var x_239 : bool;
  var x_778 : bool;
  var x_779 : bool;
  let x_211 = tint_symbol_89.x;
  if ((x_211 >= arrayLength(&(tint_symbol_62.inner)))) {
    return;
  }
  tint_symbol_1 = tint_symbol_62.inner[x_211];
  let x_221 = tint_symbol_69();
  tint_symbol_1.tint_symbol_2 = tint_symbol_1.tint_symbol_1;
  let x_230 = (tint_symbol_64.inner.tint_symbol_8 - tint_symbol_1.tint_symbol_1);
  let x_231 = length(x_230);
  let x_235 = (tint_symbol_64.inner.tint_symbol_10 == 7.0f);
  x_239 = x_235;
  if (x_235) {
    x_238 = (x_231 > 0.00100000004749745131f);
    x_239 = x_238;
  }
  if (x_239) {
    tint_symbol_1.tint_symbol_1 = (tint_symbol_1.tint_symbol_1 + (normalize(x_230) * tint_symbol_64.inner.tint_symbol_11));
  }
  if ((tint_symbol_64.inner.tint_symbol_10 == 1.0f)) {
  }
  if ((tint_symbol_64.inner.tint_symbol_10 == 2.0f)) {
    tint_symbol_1.tint_symbol_3.y = (tint_symbol_1.tint_symbol_3.y - (tint_symbol_64.inner.tint_symbol_11 * 0.30000001192092895508f));
  }
  if ((tint_symbol_64.inner.tint_symbol_10 == 3.0f)) {
    let x_279 = (tint_symbol_1.tint_symbol_1 - vec2f());
    if ((length(x_279) > 0.00100000004749745131f)) {
      tint_symbol_1.tint_symbol_3 = (tint_symbol_1.tint_symbol_3 + (normalize(x_279) * (tint_symbol_64.inner.tint_symbol_11 * 0.40000000596046447754f)));
    }
  }
  if ((tint_symbol_64.inner.tint_symbol_10 == 4.0f)) {
    let x_301 = (tint_symbol_1.tint_symbol_1 - vec2f());
    if ((length(x_301) > 0.00100000004749745131f)) {
      let x_306 = normalize(x_301);
      tint_symbol_1.tint_symbol_3 = (tint_symbol_1.tint_symbol_3 + (vec2f(-(x_306.y), x_306.x) * (tint_symbol_64.inner.tint_symbol_11 * 0.40000000596046447754f)));
    }
  }
  var x_340 : bool;
  var x_341 : bool;
  if ((tint_symbol_64.inner.tint_symbol_10 == 5.0f)) {
    let x_327 = (f32(x_211) * 12.98980045318603515625f);
    tint_symbol_1.tint_symbol_4 = (tint_symbol_1.tint_symbol_4 - 1.0f);
    let x_334 = (tint_symbol_1.tint_symbol_4 <= 0.0f);
    x_341 = x_334;
    if (x_334) {
    } else {
      x_340 = (tint_symbol_1.tint_symbol_1.y > 1.04999995231628417969f);
      x_341 = x_340;
    }
    if (x_341) {
      let x_347 = tint_symbol_64.inner.tint_symbol_15;
      let x_344 = tint_symbol_67(((x_347 + x_327) + 91.6999969482421875f));
      tint_symbol_1.tint_symbol_1 = vec2f(clamp((0.0f + ((x_344 - 0.5f) * 0.20000000298023223877f)), -0.85000002384185791016f, 0.85000002384185791016f), -0.80000001192092895508f);
      tint_symbol_1.tint_symbol_2 = tint_symbol_1.tint_symbol_1;
      let x_367 = tint_symbol_64.inner.tint_symbol_15;
      let x_365 = tint_symbol_67(((x_367 + x_327) + 10.0f));
      let x_373 = tint_symbol_64.inner.tint_symbol_15;
      let x_371 = tint_symbol_67(((x_373 + x_327) + 20.0f));
      tint_symbol_1.tint_symbol_3 = vec2f(((x_365 - 0.5f) * 0.00200000009499490261f), (0.00999999977648258209f + (x_371 * 0.00999999977648258209f)));
      let x_387 = tint_symbol_64.inner.tint_symbol_15;
      let x_385 = tint_symbol_67(((x_387 + x_327) + 30.0f));
      tint_symbol_1.tint_symbol_4 = (128.0f + (x_385 * 127.0f));
    }
    var x_422 : f32;
    let x_397 = tint_symbol_64.inner.tint_symbol_15;
    let x_395 = tint_symbol_67((x_397 + f32(x_211)));
    tint_symbol_1.tint_symbol_3.x = (tint_symbol_1.tint_symbol_3.x + ((x_395 - 0.5f) * 0.00079999997979030013f));
    tint_symbol_1.tint_symbol_1.x = (tint_symbol_1.tint_symbol_1.x + ((0.0f - tint_symbol_1.tint_symbol_1.x) * 0.15000000596046447754f));
    tint_symbol_1.tint_symbol_3.x = (tint_symbol_1.tint_symbol_3.x * 0.98000001907348632812f);
    x_422 = min((length((tint_symbol_1.tint_symbol_1 - vec2f(0.0f, -0.80000001192092895508f))) * 1024.0f), 255.0f);
    if ((x_221 == 1u)) {
      if ((x_422 > 128.0f)) {
        let x_438 = ((x_422 - 128.0f) / 127.0f);
        let x_450 = ((vec3f(0.50196081399917602539f, 0.03529411926865577698f, 0.03529411926865577698f) * x_438) + (x_447 * (1.0f - x_438)));
        tint_symbol_1.tint_symbol_6 = vec4f(x_450.x, x_450.y, x_450.z, 1.0f);
      } else {
        let x_456 = ((128.0f - x_422) / 128.0f);
        let x_465 = ((vec3f(0.99215686321258544922f, 0.81176471710205078125f, 0.34509804844856262207f) * x_456) + (x_447 * (1.0f - x_456)));
        tint_symbol_1.tint_symbol_6 = vec4f(x_465.x, x_465.y, x_465.z, 1.0f);
      }
    }
  }
  var x_508 : bool;
  var x_509 : bool;
  var x_514 : bool;
  var x_515 : bool;
  var x_547 : bool;
  var x_548 : bool;
  var x_555 : bool;
  var x_556 : bool;
  var x_561 : bool;
  var x_562 : bool;
  if ((tint_symbol_64.inner.tint_symbol_10 == 6.0f)) {
    let x_478 = (f32(x_211) * 78.233001708984375f);
    tint_symbol_1.tint_symbol_4 = (tint_symbol_1.tint_symbol_4 - 1.0f);
    tint_symbol_1.tint_symbol_3.y = (tint_symbol_1.tint_symbol_3.y - 0.00089999998454004526f);
    tint_symbol_1.tint_symbol_3.x = (tint_symbol_1.tint_symbol_3.x * 0.99500000476837158203f);
    tint_symbol_1.tint_symbol_3.y = (tint_symbol_1.tint_symbol_3.y * 0.99900001287460327148f);
    let x_503 = !((tint_symbol_1.tint_symbol_5 < 0.94999998807907104492f));
    x_509 = x_503;
    if (x_503) {
      x_508 = (tint_symbol_1.tint_symbol_1.y <= -1.0f);
      x_509 = x_508;
    }
    x_515 = x_509;
    if (x_509) {
      x_514 = (tint_symbol_1.tint_symbol_3.y < 0.0f);
      x_515 = x_514;
    }
    if (x_515) {
      tint_symbol_1.tint_symbol_1.y = -1.0f;
      tint_symbol_1.tint_symbol_3.y = (abs(tint_symbol_1.tint_symbol_3.y) * 0.44999998807907104492f);
      let x_525 = tint_symbol_1.tint_symbol_3.x;
      let x_528 = tint_symbol_1.tint_symbol_4;
      let x_526 = tint_symbol_67((x_478 + (x_528 * 0.28999999165534973145f)));
      tint_symbol_1.tint_symbol_3.x = (x_525 + (((x_526 * 2.0f) - 1.0f) * 0.00120000005699694157f));
      tint_symbol_1.tint_symbol_5 = 0.85000002384185791016f;
    }
    let x_541 = (tint_symbol_1.tint_symbol_4 <= 0.0f);
    x_548 = x_541;
    if (x_541) {
    } else {
      x_547 = (tint_symbol_1.tint_symbol_1.y < -1.08000004291534423828f);
      x_548 = x_547;
    }
    x_556 = x_548;
    if (x_548) {
    } else {
      x_555 = (abs(tint_symbol_1.tint_symbol_1.x) > 1.08000004291534423828f);
      x_556 = x_555;
    }
    x_562 = x_556;
    if (x_556) {
    } else {
      x_561 = (tint_symbol_1.tint_symbol_1.y > 1.08000004291534423828f);
      x_562 = x_561;
    }
    if (x_562) {
      let x_565 = tint_symbol_67((x_478 + 17.0f));
      let x_568 = tint_symbol_67((x_478 + 29.0f));
      let x_571 = tint_symbol_67((x_478 + 41.0f));
      let x_574 = tint_symbol_67((x_478 + 67.0f));
      let x_577 = tint_symbol_67((x_478 + 79.0f));
      tint_symbol_1.tint_symbol_1 = vec2f(((x_565 * 2.0f) - 1.0f), (1.0f + (x_568 * 0.07999999821186065674f)));
      tint_symbol_1.tint_symbol_2 = tint_symbol_1.tint_symbol_1;
      tint_symbol_1.tint_symbol_3 = vec2f((((x_571 * 2.0f) - 1.0f) * 0.00150000001303851604f), -((0.00999999977648258209f + (x_574 * 0.01499999966472387314f))));
      tint_symbol_1.tint_symbol_4 = (75.0f + (x_577 * 90.0f));
      tint_symbol_1.tint_symbol_5 = 1.0f;
    }
    let x_607 = tint_symbol_1.tint_symbol_4;
    let x_605 = tint_symbol_67((x_478 + (x_607 * 0.10999999940395355225f)));
    if ((x_221 == 2u)) {
      let x_615 = mix(x_617, x_619, vec3f(x_605));
      tint_symbol_1.tint_symbol_6 = vec4f(x_615.x, x_615.y, x_615.z, 0.69999998807907104492f);
    }
  }
  var x_656 : bool;
  var x_657 : bool;
  if ((x_221 == 0u)) {
    let x_635 = (f32(x_211) * 0.03099999949336051941f);
    tint_symbol_1.tint_symbol_6 = vec4f((0.5f + (0.5f * sin(x_635))), (0.5f + (0.5f * sin((x_635 + 2.09439516067504882812f)))), (0.5f + (0.5f * sin((x_635 + 4.18879032135009765625f)))), 1.0f);
  } else {
    let x_651 = (x_221 == 1u);
    x_657 = x_651;
    if (x_651) {
      x_656 = (tint_symbol_64.inner.tint_symbol_10 != 5.0f);
      x_657 = x_656;
    }
    var x_684 : bool;
    var x_685 : bool;
    if (x_657) {
      let x_661 = tint_symbol_67(((f32(x_211) * 12.98980045318603515625f) + 9.0f));
      let x_667 = mix(vec3f(1.0f, 0.25f, 0.01999999955296516418f), vec3f(1.0f, 0.81999999284744262695f, 0.20000000298023223877f), vec3f(x_661));
      tint_symbol_1.tint_symbol_6 = vec4f(x_667.x, x_667.y, x_667.z, 1.0f);
    } else {
      let x_679 = (x_221 == 2u);
      x_685 = x_679;
      if (x_679) {
        x_684 = (tint_symbol_64.inner.tint_symbol_10 != 6.0f);
        x_685 = x_684;
      }
      if (x_685) {
        let x_689 = tint_symbol_67(((f32(x_211) * 78.233001708984375f) + 21.0f));
        let x_695 = mix(x_617, x_619, vec3f(x_689));
        tint_symbol_1.tint_symbol_6 = vec4f(x_695.x, x_695.y, x_695.z, 1.0f);
      } else {
        if ((x_221 == 3u)) {
          tint_symbol_1.tint_symbol_6 = vec4f(0.89999997615814208984f, 0.89999997615814208984f, 0.89999997615814208984f, 1.0f);
        } else {
          if ((x_221 == 4u)) {
            tint_symbol_1.tint_symbol_6 = vec4f(0.20000000298023223877f, 0.80000001192092895508f, 0.20000000298023223877f, 1.0f);
          } else {
            if ((x_221 == 5u)) {
              tint_symbol_1.tint_symbol_6 = vec4f(1.0f, 0.20000000298023223877f, 0.80000001192092895508f, 1.0f);
            } else {
              if ((x_221 == 6u)) {
                tint_symbol_1.tint_symbol_6 = vec4f(0.80000001192092895508f, 0.20000000298023223877f, 1.0f, 1.0f);
              } else {
                if ((x_221 == 7u)) {
                  tint_symbol_1.tint_symbol_6 = vec4f(1.0f, 1.0f, 0.20000000298023223877f, 1.0f);
                }
              }
            }
          }
        }
      }
    }
  }
  if ((x_231 > 0.00100000004749745131f)) {
    let x_734 = normalize(x_230);
    if ((tint_symbol_64.inner.tint_symbol_9 == 1.0f)) {
      tint_symbol_1.tint_symbol_3 = (tint_symbol_1.tint_symbol_3 + (x_734 * tint_symbol_64.inner.tint_symbol_11));
    }
    if ((tint_symbol_64.inner.tint_symbol_9 == 2.0f)) {
      tint_symbol_1.tint_symbol_3 = (tint_symbol_1.tint_symbol_3 - (x_734 * tint_symbol_64.inner.tint_symbol_11));
    }
  }
  tint_symbol_1.tint_symbol_1 = (tint_symbol_1.tint_symbol_1 + tint_symbol_1.tint_symbol_3);
  tint_symbol_1.tint_symbol_3 = (tint_symbol_1.tint_symbol_3 * tint_symbol_64.inner.tint_symbol_12);
  let x_773 = (tint_symbol_64.inner.tint_symbol_10 != 5.0f);
  x_779 = x_773;
  if (x_773) {
    x_778 = (tint_symbol_64.inner.tint_symbol_10 != 6.0f);
    x_779 = x_778;
  }
  if (x_779) {
    if ((tint_symbol_1.tint_symbol_1.x > 1.0f)) {
      tint_symbol_1.tint_symbol_1.x = 1.0f;
      tint_symbol_1.tint_symbol_3.x = -(tint_symbol_1.tint_symbol_3.x);
    }
    if ((tint_symbol_1.tint_symbol_1.x < -1.0f)) {
      tint_symbol_1.tint_symbol_1.x = -1.0f;
      tint_symbol_1.tint_symbol_3.x = -(tint_symbol_1.tint_symbol_3.x);
    }
    if ((tint_symbol_1.tint_symbol_1.y > 1.0f)) {
      tint_symbol_1.tint_symbol_1.y = 1.0f;
      tint_symbol_1.tint_symbol_3.y = -(tint_symbol_1.tint_symbol_3.y);
    }
    if ((tint_symbol_1.tint_symbol_1.y < -1.0f)) {
      tint_symbol_1.tint_symbol_1.y = -1.0f;
      tint_symbol_1.tint_symbol_3.y = -(tint_symbol_1.tint_symbol_3.y);
    }
  }
  tint_symbol_63.inner[x_211] = tint_symbol_1;
  return;
}

fn tint_symbol_88_1() {
  let x_827 = tint_symbol_89_1;
  tint_symbol_88_inner(x_827);
  return;
}

@compute @workgroup_size(256i, 1i, 1i)
fn computeMain(@builtin(global_invocation_id) tint_symbol_89_1_param : vec3u) {
  tint_symbol_89_1 = tint_symbol_89_1_param;
  tint_symbol_88_1();
}
