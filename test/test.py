# SPDX-FileCopyrightText: © 2024 Tiny Tapeout
# SPDX-License-Identifier: Apache-2.0

import cocotb
from cocotb.triggers import Timer
import random

@cocotb.test()
async def test_half_adder(dut):
    """Test for half adder"""

    for _ in range(10):
        a = random.randint(0, 1)
        b = random.randint(0, 1)

        dut.a.value = a
        dut.b.value = b

 await Timer(2, units='ns')

        assert dut.sum.value == (a ^ b), f"Test failed with a={a}, b={b}, sum={dut.sum.value}"
        assert dut.carry.value == (a & b), f"Test failed with a={a}, b={b}, carry={dut.carry.value}"
