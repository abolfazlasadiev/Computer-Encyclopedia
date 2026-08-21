### 🧭 راهنما مسیر Roadmap یادگیری VHDL در Computer Encyclopedia

اگر تازه می‌خواهی VHDL را شروع کنی، **قرار نیست از همان اول کدهای پیچیده بنویسی.**

این دانشنامه طوری طراحی شده که قدم‌به‌قدم از:

1. «مدار دیجیتال چیست؟»

برسی به:

2. «چطور یک سیستم دیجیتال کامل روی FPGA بسازم؟»

پس **پوشه‌ها را به همان ترتیب زیر مطالعه کن.**

---

# مسیر کلی

```text
00 Overview
    ↓
01 Digital Logic
    ↓
02 VHDL Fundamentals
    ↓
03 Combinational Circuits
    ↓
04 Sequential Circuits
    ↓
05 FSM
    ↓
06 Advanced VHDL
    ↓
07 Verification & Testbench
    ↓
08 FPGA Development
    ↓
09 Projects
    ↓
10 Reference
    ↓
11 Challenges
```

اما این مسیر فقط یک لیست نیست. هر مرحله یک سؤال جدید را جواب می‌دهد.

---

# 🟢 مرحله 00 — Overview

### سؤال این مرحله:

> زبان VHDL اصلاً چیست و من چرا باید آن را یاد بگیرم؟

اینجا هنوز وارد جزئیات کدنویسی نشو.

یاد بگیر:

```text
HDL چیست؟
VHDL چیست؟
FPGA چیست؟
Simulation چیست؟
Synthesis چیست؟
Hardware با Software چه تفاوتی دارد؟
```

### خروجی این مرحله

باید یک تصویر کلی در ذهنت داشته باشی:

```text
VHDL
 ↓
توصیف Hardware
 ↓
Simulation
 ↓
Synthesis
 ↓
FPGA
 ↓
Hardware واقعی
```

اگر این تصویر را فهمیدی، برو مرحله بعد.

---

# 🟢 مرحله 01 — Digital Logic Prerequisites

### سؤال این مرحله:

> سخت‌افزاری که قرار است با VHDL بسازم، از چه چیزی تشکیل شده؟

قبل از اینکه VHDL بنویسی باید منطق دیجیتال را بفهمی.

یاد بگیر:

```text
Binary
↓
Logic Gates
↓
Boolean Algebra
↓
Truth Table
↓
Combinational Logic
↓
Flip-Flop
↓
Register
↓
Counter
↓
FSM
```

مثلاً باید بفهمی:

```text
A ──┐
    AND ── Y
B ──┘
```

قبل از اینکه بنویسی:

```vhdl
y <= a and b;
```

### هدف

وقتی کد VHDL می‌بینی، بتوانی بگویی:

> «این کد چه سخت‌افزاری ایجاد می‌کند؟»

---

# 🟢 مرحله 02 — VHDL Fundamentals

حالا تازه **خود VHDL** را شروع کن.

یاد بگیر:

```text
Entity
Architecture
Port
Signal
Variable
Constant
Type
std_logic
std_logic_vector
Operators
Process
if
case
loop
Libraries
Packages
```

اما یک نکته خیلی مهم:

### فقط مطالعه نکن.

هر چیزی که یاد می‌گیری، سریع یک مثال کوچک با آن بنویس.

مثلاً:

```text
Signal
 ↓
یک مدار کوچک
 ↓
Simulation
```

بعد:

```text
Process
 ↓
یک مدار کوچک
 ↓
Simulation
```

### هدف

در پایان این مرحله بتوانی یک Component ساده VHDL بنویسی و بفهمی هر قسمت کد چه کاری انجام می‌دهد.

---

# 🟡 مرحله 03 — Combinational Circuits

حالا شروع کن به **ساخت مدار**.

از ساده‌ترین مدارها شروع کن:

```text
AND
OR
NOT
NAND
NOR
XOR
XNOR
```

بعد برو سراغ:

```text
MUX
Decoder
Encoder
Comparator
Adder
Subtractor
ALU
```

ترتیب یادگیری خیلی مهم است.

مثلاً:

```text
AND
 ↓
XOR
 ↓
Half Adder
 ↓
Full Adder
 ↓
4-bit Adder
 ↓
ALU
```

### چرا؟

چون پروژه جدید باید از پروژه قبلی چیزی یاد بگیرد.

### هدف

در پایان این مرحله بتوانی بگویی:

> «یک مسئله منطقی را می‌گیرم، Truth Table می‌سازم و بعد آن را با VHDL پیاده می‌کنم.»

---

# 🟡 مرحله 04 — Sequential Circuits

اینجا یک اتفاق مهم می‌افتد:

## Clock وارد بازی می‌شود.

تا اینجا بیشتر مدارها تقریباً این‌طور بودند:

```text
Input
 ↓
Logic
 ↓
Output
```

اما حالا:

```text
Clock
 ↓
State
 ↓
Next State
```

را یاد می‌گیری.

مطالعه کن:

```text
Flip-Flop
 ↓
Register
 ↓
Shift Register
 ↓
Counter
 ↓
Frequency Divider
```

پروژه‌ها را هم به همین ترتیب انجام بده:

```text
D Flip-Flop
 ↓
Register
 ↓
Counter
 ↓
Shift Register
 ↓
Frequency Divider
```

### هدف

بفهمی چرا بعضی مدارها **حافظه دارند** و چرا Clock اهمیت دارد.

---

# 🟠 مرحله 05 — FSM

حالا می‌توانی سیستم‌های کنترلی بسازی.

FSM یعنی:

> سیستم من الان در چه حالتی است و بعداً به چه حالتی برود؟

مثلاً چراغ راهنمایی:

```text
RED
 ↓
GREEN
 ↓
YELLOW
 ↓
RED
```

بعد پروژه‌های واقعی‌تر:

```text
Traffic Light
 ↓
Vending Machine
 ↓
Digital Lock
 ↓
Elevator
 ↓
Washing Machine
```

### هنگام مطالعه هر FSM این ۴ سؤال را از خودت بپرس:

1. Stateهای سیستم چیست؟
    
2. چه چیزی باعث تغییر State می‌شود؟
    
3. از هر State به کجا می‌روم؟
    
4. خروجی هر State چیست؟
    

### هدف

دیگر فقط مدار نسازی؛ بتوانی **رفتار یک سیستم دیجیتال را طراحی کنی.**

---

# 🔵 مرحله 06 — Advanced VHDL

حالا زبان VHDL را حرفه‌ای‌تر می‌کنی.

اینجا برو سراغ:

```text
Types
Records
Arrays
Generics
Functions
Procedures
Packages
Components
Generate
Hierarchy
```

هدف این نیست که فقط معنی این کلمات را حفظ کنی.

هدف این است که بفهمی:

> «چطور کدی بنویسم که در پروژه‌های دیگر هم بتوانم از آن استفاده کنم؟»

مثلاً به جای ساختن فقط:

```text
8-bit Counter
```

یک:

```text
Generic Counter
```

بساز که بتواند:

```text
4-bit
8-bit
16-bit
32-bit
```

باشد.

---

# 🔵 مرحله 07 — Verification & Testbench

این مرحله خیلی مهم است.

تا اینجا یاد گرفته‌ای:

> «چطور مدار را بسازم؟»

حالا باید یاد بگیری:

> **«از کجا بفهمم درست ساخته‌ام؟»**

اینجا یاد می‌گیری:

```text
Testbench
 ↓
Stimulus
 ↓
Simulation
 ↓
Waveform
 ↓
Assertions
 ↓
Verification
```

مثلاً اگر ALU ساختی، نباید فقط بگویی:

> به نظر درست می‌آید.

باید تست کنی:

```text
ADD
SUB
AND
OR
XOR
Overflow
Zero
Invalid Cases
```

و نتیجه را خود سیستم بررسی کند.

### هدف

یاد بگیری طراحی خوب فقط:

```text
Code
```

نیست.

بلکه:

```text
Design
+
Test
+
Verification
```

است.

---

# 🟣 مرحله 08 — FPGA Development

حالا از Simulator خارج می‌شوی.

تا اینجا بیشتر:

```text
VHDL
 ↓
Simulation
```

داشتی.

حالا:

```text
VHDL
 ↓
Synthesis
 ↓
Implementation
 ↓
Bitstream
 ↓
FPGA
```

را یاد می‌گیری.

مطالعه کن:

```text
FPGA
LUT
Flip-Flop
BRAM
Clock
I/O
Pin
Constraints
Timing
Synthesis
Implementation
Bitstream
```

و با ابزارهای مناسب FPGA خودت کار کن.

### هدف

بفهمی کدی که نوشته‌ای چطور تبدیل به **سخت‌افزار واقعی** می‌شود.

---

# 🔴 مرحله 09 — Projects

اینجا مهم‌ترین قسمت مسیر است.

تا اینجا آموزش دیده‌ای.

حالا باید **بسازی.**

پروژه‌ها را به ترتیب Level انجام بده.

```text
Level 1
Logic Gates
      ↓
Level 2
Combinational Logic
      ↓
Level 3
Sequential Logic
      ↓
Level 4
FSM
      ↓
Level 5
Real Digital Systems
      ↓
Level 6
FPGA Projects
      ↓
Level 7
Advanced Projects
```

---

# 🧩 چگونه هر پروژه را مطالعه کنی؟

هیچ پروژه‌ای را فقط از روی کد کپی نکن.

برای هر پروژه این مسیر را برو:

```text
1. Problem
      ↓
2. Goal
      ↓
3. Requirements
      ↓
4. Inputs / Outputs
      ↓
5. Digital Logic
      ↓
6. Block Diagram
      ↓
7. Design
      ↓
8. VHDL Code
      ↓
9. Testbench
      ↓
10. Simulation
      ↓
11. Verification
      ↓
12. Hardware
```

---

# مثال: اگر به Digital Clock رسیدی

نباید مستقیم فایل VHDL را باز کنی.

اول بفهم:

> قرار است چه چیزی بسازم؟

بعد:

```text
Clock
 ↓
Clock Divider
 ↓
1 Hz
 ↓
Seconds Counter
 ↓
Minutes Counter
 ↓
Hours Counter
 ↓
Display
```

بعد Componentها را طراحی کن.

بعد VHDL بنویس.

بعد Testbench.

بعد Simulation.

بعد، اگر FPGA داری، روی Hardware اجرا کن.

---

# 🟤 مرحله 10 — Reference

این قسمت را **از اول تا آخر مطالعه نکن.**

Reference برای زمانی است که چیزی را فراموش کرده‌ای.

مثلاً وسط پروژه یادت نیست:

> Syntax مربوط به `generate` چه بود؟

برو:

```text
10-Reference
   ↓
Generate
```

یا:

> `numeric_std` چه توابعی دارد؟

برو Reference.

پس:

```text
Tutorial → برای یادگیری
Reference → برای مراجعه
```

---

# ⚫ مرحله 11 — Challenges

وقتی پروژه‌ها را انجام دادی، برو سراغ Challengeها.

اینجا دیگر قرار نیست قدم‌به‌قدم به تو بگویند چه کار کنی.

مثلاً:

> یک Counter modulo-10 طراحی کن.

و تو باید خودت فکر کنی:

```text
Requirements
 ↓
Design
 ↓
FSM/Counter
 ↓
VHDL
 ↓
Testbench
 ↓
Verification
```

### هدف

تبدیل شدن از:

> کسی که آموزش را دنبال می‌کند

به:

> **کسی که خودش می‌تواند طراحی کند.**

---

# ⭐ روش مطالعه پیشنهادی

بهترین روش این است که هر پوشه را در سه دور مطالعه کنی.

## دور اول — فهم

فقط بفهم:

> موضوع چیست؟

مثلاً:

```text
Counter چیست؟
```

---

## دور دوم — ساخت

خودت پروژه را پیاده کن.

نه Copy/Paste.

اول خودت تلاش کن.

اگر گیر کردی، به آموزش نگاه کن.

---

## دور سوم — تغییر

این مرحله خیلی مهم است.

بعد از اینکه پروژه کار کرد، آن را تغییر بده.

مثلاً اگر:

```text
8-bit Counter
```

ساختی، امتحان کن:

```text
4-bit
16-bit
Enable
Reset
Up/Down
```

اینجا واقعاً یاد می‌گیری.

---

# 🧠 قانون طلایی یادگیری VHDL

برای هر چیزی که یاد می‌گیری، این زنجیره را در ذهن داشته باش:

```text
Concept
  ↓
Why?
  ↓
How?
  ↓
Small Example
  ↓
Project
  ↓
Testbench
  ↓
Simulation
  ↓
Modify
  ↓
Challenge
```

مثلاً:

```text
Counter
 ↓
چرا Counter لازم است؟
 ↓
چطور کار می‌کند؟
 ↓
یک Counter ساده
 ↓
Digital Clock
 ↓
Testbench
 ↓
Simulation
 ↓
تغییر Width
 ↓
Challenge
```

---

# 🗺️ نقشه نهایی مسیر دانشجو

اگر بخواهیم کل دانشنامه را در یک تصویر ذهنی ساده خلاصه کنیم:

```text
                    VHDL
                      │
                      ▼
             ┌─────────────────┐
             │ 00 — Overview   │
             └────────┬────────┘
                      ▼
             ┌─────────────────┐
             │ 01 — Digital    │
             │      Logic      │
             └────────┬────────┘
                      ▼
             ┌─────────────────┐
             │ 02 — VHDL       │
             │    Fundamentals │
             └────────┬────────┘
                      ▼
             ┌─────────────────┐
             │ 03 — Combin.    │
             │     Logic       │
             └────────┬────────┘
                      ▼
             ┌─────────────────┐
             │ 04 — Sequential │
             │     Logic       │
             └────────┬────────┘
                      ▼
             ┌─────────────────┐
             │ 05 — FSM        │
             └────────┬────────┘
                      ▼
             ┌─────────────────┐
             │ 06 — Advanced   │
             │      VHDL       │
             └────────┬────────┘
                      ▼
             ┌─────────────────┐
             │ 07 — Verification│
             └────────┬────────┘
                      ▼
             ┌─────────────────┐
             │ 08 — FPGA       │
             └────────┬────────┘
                      ▼
             ┌─────────────────┐
             │ 09 — Projects   │
             └────────┬────────┘
                      ▼
             ┌─────────────────┐
             │ 10 — Reference  │
             └────────┬────────┘
                      ▼
             ┌─────────────────┐
             │ 11 — Challenges │
             └────────┬────────┘
                      ▼
               FPGA Designer
```

## خلاصه خیلی ساده

اگر دانشجو فقط بخواهد بداند **«از کجا شروع کنم؟»**:

```text
اول:
00 + 01
```

بعد:

```text
02
```

بعد:

```text
03 → 04 → 05
```

بعد:

```text
06 → 07
```

بعد:

```text
08
```

بعد:

```text
09 Projects
```

و در آخر:

```text
10 Reference
11 Challenges
```

**Reference را هر وقت لازم داشتی باز کن و Challenge را بعد از یادگیری و تمرین انجام بده.**

در نهایت مسیر واقعی یادگیری این است:

> **بفهم → بساز → تست کن → خرابش کن → اصلاحش کن → تغییرش بده → Challenge حل کن.**

این روش باعث می‌شود دانشجو از حفظ کردن VHDL فاصله بگیرد و واقعاً یاد بگیرد **چطور با VHDL سخت‌افزار طراحی کند.**