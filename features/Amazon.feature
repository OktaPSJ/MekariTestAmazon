Feature: Pendaftaran dan login pada website amazon

  Scenario: Melakukan Pendaftaran
    Given Mengakses Website amazon pendaftaran
    When Mengisi field pendaftaran

  Scenario: Melakukan Login
    Given Mengakses website amazon login
    When Mengisi field login
    Then Halaman Awal Amazon



    