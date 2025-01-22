# format is ok [plain]

    Code
      vigicaen:::check_data_drug(data_invalid, arg = "x")
    Condition
      Error:
      ! `x` is not a `drug` table.
      x Missing columns: DrecNo, MedicinalProd_Id, and Drug_Id
      > Supply a `drug` table to `x`. See ?drug_.

---

    Code
      vigicaen:::check_data_adr(data_invalid, arg = "x")
    Condition
      Error:
      ! `x` is not an `adr` table.
      x Missing columns: Adr_Id, MedDRA_Id, and Outcome
      > Supply an `adr` table to `x`. See ?adr_.

---

    Code
      vigicaen:::check_data_smqlist(smq_list_content, arg = "x")
    Condition
      Error:
      ! `x` is not an `smq_list` table.
      x Invalid/missing columns detected
      > Did you provide an `smq_list_content`, instead of an `smq_list` dataset?.
      > See ?smq_list_.

# format is ok [ansi]

    Code
      vigicaen:::check_data_drug(data_invalid, arg = "x")
    Condition
      [1m[33mError[39m:[22m
      [1m[22m[33m![39m `x` is not a `drug` table.
      [31mx[39m Missing columns: DrecNo, MedicinalProd_Id, and Drug_Id
      > Supply a `drug` table to `x`. See ?drug_.

---

    Code
      vigicaen:::check_data_adr(data_invalid, arg = "x")
    Condition
      [1m[33mError[39m:[22m
      [1m[22m[33m![39m `x` is not an `adr` table.
      [31mx[39m Missing columns: Adr_Id, MedDRA_Id, and Outcome
      > Supply an `adr` table to `x`. See ?adr_.

---

    Code
      vigicaen:::check_data_smqlist(smq_list_content, arg = "x")
    Condition
      [1m[33mError[39m:[22m
      [1m[22m[33m![39m `x` is not an `smq_list` table.
      [31mx[39m Invalid/missing columns detected
      > Did you provide an `smq_list_content`, instead of an `smq_list` dataset?.
      > See ?smq_list_.

# format is ok [unicode]

    Code
      vigicaen:::check_data_drug(data_invalid, arg = "x")
    Condition
      Error:
      ! `x` is not a `drug` table.
      ✖ Missing columns: DrecNo, MedicinalProd_Id, and Drug_Id
      → Supply a `drug` table to `x`. See ?drug_.

---

    Code
      vigicaen:::check_data_adr(data_invalid, arg = "x")
    Condition
      Error:
      ! `x` is not an `adr` table.
      ✖ Missing columns: Adr_Id, MedDRA_Id, and Outcome
      → Supply an `adr` table to `x`. See ?adr_.

---

    Code
      vigicaen:::check_data_smqlist(smq_list_content, arg = "x")
    Condition
      Error:
      ! `x` is not an `smq_list` table.
      ✖ Invalid/missing columns detected
      → Did you provide an `smq_list_content`, instead of an `smq_list` dataset?.
      → See ?smq_list_.

# format is ok [fancy]

    Code
      vigicaen:::check_data_drug(data_invalid, arg = "x")
    Condition
      [1m[33mError[39m:[22m
      [1m[22m[33m![39m `x` is not a `drug` table.
      [31m✖[39m Missing columns: DrecNo, MedicinalProd_Id, and Drug_Id
      → Supply a `drug` table to `x`. See ?drug_.

---

    Code
      vigicaen:::check_data_adr(data_invalid, arg = "x")
    Condition
      [1m[33mError[39m:[22m
      [1m[22m[33m![39m `x` is not an `adr` table.
      [31m✖[39m Missing columns: Adr_Id, MedDRA_Id, and Outcome
      → Supply an `adr` table to `x`. See ?adr_.

---

    Code
      vigicaen:::check_data_smqlist(smq_list_content, arg = "x")
    Condition
      [1m[33mError[39m:[22m
      [1m[22m[33m![39m `x` is not an `smq_list` table.
      [31m✖[39m Invalid/missing columns detected
      → Did you provide an `smq_list_content`, instead of an `smq_list` dataset?.
      → See ?smq_list_.

# smq_list is distinguished of smq_list_content

    Code
      vigicaen:::check_data_smqlist(smq_list_content, arg = "x")
    Condition
      Error:
      ! `x` is not an `smq_list` table.
      x Invalid/missing columns detected
      > Did you provide an `smq_list_content`, instead of an `smq_list` dataset?.
      > See ?smq_list_.

