#language: ru
@дерево

Функционал: <описание фичи>

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Загрузка данных

	// Справочник.AddAttributeAndPropertyValues

	И я проверяю или создаю для справочника "AddAttributeAndPropertyValues" объекты:
		| 'Ref'                                                                                   | 'DeletionMark' | 'Owner'                                                                                              | 'Code' | 'AdditionalID' | 'Description_en' | 'Description_hash' | 'Description_ru' | 'Description_tr' | 'UniqueID'                          |
		| 'e1cib/data/Catalog.AddAttributeAndPropertyValues?ref=b762b13668d0905011eb766bf96b2761' | 'False'        | 'e1cib/data/ChartOfCharacteristicTypes.AddAttributeAndProperty?ref=b762b13668d0905011eb766bf96b275d' | 9      | ''             | 'Бренд 2'        | ''                 | ''               | ''               | '_1cea0aa955c141de84e1e6afade738c9' |

	// Справочник.Agreements

	И я проверяю или создаю для справочника "Agreements" объекты:
		| 'Ref'                                                                | 'DeletionMark' | 'Code' | 'Number' | 'Date'               | 'PartnerSegment'                                                          | 'Partner' | 'Company'                                                           | 'PriceType'                                                          | 'ItemSegment' | 'StartUsing'         | 'EndOfUse'           | 'ManagerSegment' | 'PriceIncludeTax' | 'DaysBeforeDelivery' | 'Store'                                                          | 'Type'                         | 'LegalName' | 'CurrencyMovementType'                                                                            | 'ApArPostingDetail'                  | 'StandardAgreement' | 'Kind'                        | 'UseCreditLimit' | 'CreditLimitAmount' | 'PaymentTerm'                                                              | 'Description_en'                                                  | 'Description_hash' | 'Description_ru' | 'Description_tr' |
		| 'e1cib/data/Catalog.Agreements?ref=b762b13668d0905011eb76684b9f6867' | 'False'        | 1      | '123456' | '01.01.2021 0:00:00' | 'e1cib/data/Catalog.PartnerSegments?ref=b762b13668d0905011eb76684b9f6864' | ''        | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7663e35d7964' | 'e1cib/data/Catalog.PriceTypes?ref=b762b13668d0905011eb76684b9f6866' | ''            | '01.01.2021 0:00:00' | '01.01.0001 0:00:00' | ''               | 'True'            |                      | 'e1cib/data/Catalog.Stores?ref=b762b13668d0905011eb76684b9f6861' | 'Enum.AgreementTypes.Customer' | ''          | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d796b' | 'Enum.ApArPostingDetail.ByDocuments' | ''                  | 'Enum.AgreementKinds.Regular' | 'True'           | 5000                | 'e1cib/data/Catalog.PaymentSchedules?ref=b762b13668d0905011eb76684b9f686c' | 'Соглашение с клиентами (расчет по документам + кредитный лимит)' | ''                 | ''               | ''               |

	// Справочник.Companies

	И я проверяю или создаю для справочника "Companies" объекты:
		| 'Ref'                                                               | 'DeletionMark' | 'Code' | 'Country'                                                           | 'MainCompany' | 'Partner'                                                          | 'Type'                          | 'OurCompany' | 'Description_en'         | 'Description_hash' | 'Description_ru' | 'Description_tr' |
		| 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7663e35d7964' | 'False'        | 1      | 'e1cib/data/Catalog.Countries?ref=b762b13668d0905011eb7663e35d7963' | ''            | ''                                                                 | 'Enum.CompanyLegalType.Company' | 'True'       | 'Собственная компания 1' | ''                 | ''               | ''               |
		| 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7674324a4a2a' | 'False'        | 5      | ''                                                                  | ''            | 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d794b' | 'Enum.CompanyLegalType.Company' | 'False'      | 'Клиент 1'               | ''                 | ''               | ''               |

	И я перезаполняю для объекта табличную часть "Currencies":
		| 'Ref'                                                               | 'MovementType'                                                                                    |
		| 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7663e35d7964' | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d7968' |
		| 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7663e35d7964' | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d7969' |
		| 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7663e35d7964' | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d796a' |

	// Справочник.Countries

	И я проверяю или создаю для справочника "Countries" объекты:
		| 'Ref'                                                               | 'DeletionMark' | 'Code' | 'Currency'                                                           | 'LocalizationCode' | 'Description_en' | 'Description_hash' | 'Description_ru' | 'Description_tr' |
		| 'e1cib/data/Catalog.Countries?ref=b762b13668d0905011eb7663e35d7963' | 'False'        | 1      | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795f' | ''                 | 'Страна 1'       | ''                 | ''               | ''               |

	// Справочник.Currencies

	И я проверяю или создаю для справочника "Currencies" объекты:
		| 'Ref'                                                                | 'DeletionMark' | 'Code' | 'Symbol' | 'NumericCode' | 'Description_en' | 'Description_hash' | 'Description_ru' | 'Description_tr' |
		| 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | 'False'        | 'USD'  | '$'      | '840'         | 'Доллар'         | ''                 | ''               | ''               |
		| 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795f' | 'False'        | 'EUR'  | '€'      | '978'         | 'Евро'           | ''                 | ''               | ''               |

	// Справочник.ExternalDataProc

	И я проверяю или создаю для справочника "ExternalDataProc" объекты:
		| 'Ref'                                                                      | 'DeletionMark' | 'Parent' | 'IsFolder' | 'Code' | 'Settings'                              | 'PathToExtDataProcForTest' | 'Name'            | 'DataProcStorage'                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           | 'UnsafeMode' | 'Description_en' | 'Description_hash' | 'Description_ru' | 'Description_tr' |
		| 'e1cib/data/Catalog.ExternalDataProc?ref=b762b13668d0905011eb7663e35d796f' | 'False'        | ''       | 'False'    | 1      | 'ValueStorage:AQEIAAAAAAAAAO+7v3siVSJ9' | ''                         | 'TaxCalculateVAT' | 'ValueStorage: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' | 'False'      | 'Расчет налогов' | ''                 | ''               | ''               |

	// Справочник.IntegrationSettings

	И я проверяю или создаю для справочника "IntegrationSettings" объекты:
		| 'Ref'                                                                         | 'DeletionMark' | 'Code' | 'Description'            | 'ExternalDataProc' | 'IntegrationType'                    | 'ExternalDataProcSettings'              | 'UniqueID'                          |
		| 'e1cib/data/Catalog.IntegrationSettings?ref=b762b13668d0905011eb7663e35d7966' | 'False'        | 1      | 'Источник курса валют 1' | ''                 | 'Enum.IntegrationType.CurrencyRates' | 'ValueStorage:AQEIAAAAAAAAAO+7v3siVSJ9' | '_8a862d6e657e4386b794c6e29f6a05e0' |
		| 'e1cib/data/Catalog.IntegrationSettings?ref=b762b13668d0905011eb7663e35d7967' | 'False'        | 2      | 'Источник курса валют 2' | ''                 | 'Enum.IntegrationType.CurrencyRates' | 'ValueStorage:AQEIAAAAAAAAAO+7v3siVSJ9' | '_b3fe2453726d4545b3334f227d3a00ba' |

	И я перезаполняю для объекта табличную часть "ConnectionSetting":
		| 'Ref'                                                                         | 'Key'                 | 'Value'     |
		| 'e1cib/data/Catalog.IntegrationSettings?ref=b762b13668d0905011eb7663e35d7966' | 'QueryType'           | 'POST'      |
		| 'e1cib/data/Catalog.IntegrationSettings?ref=b762b13668d0905011eb7663e35d7966' | 'ResourceAddress'     | ''          |
		| 'e1cib/data/Catalog.IntegrationSettings?ref=b762b13668d0905011eb7663e35d7966' | 'Ip'                  | 'localhost' |
		| 'e1cib/data/Catalog.IntegrationSettings?ref=b762b13668d0905011eb7663e35d7966' | 'Port'                | '8 080'     |
		| 'e1cib/data/Catalog.IntegrationSettings?ref=b762b13668d0905011eb7663e35d7966' | 'User'                | ''          |
		| 'e1cib/data/Catalog.IntegrationSettings?ref=b762b13668d0905011eb7663e35d7966' | 'Password'            | ''          |
		| 'e1cib/data/Catalog.IntegrationSettings?ref=b762b13668d0905011eb7663e35d7966' | 'Proxy'               | ''          |
		| 'e1cib/data/Catalog.IntegrationSettings?ref=b762b13668d0905011eb7663e35d7966' | 'TimeOut'             | '60'        |
		| 'e1cib/data/Catalog.IntegrationSettings?ref=b762b13668d0905011eb7663e35d7966' | 'SecureConnection'    | ''          |
		| 'e1cib/data/Catalog.IntegrationSettings?ref=b762b13668d0905011eb7663e35d7966' | 'UseOSAuthentication' | 'False'     |
		| 'e1cib/data/Catalog.IntegrationSettings?ref=b762b13668d0905011eb7663e35d7966' | 'Headers'             | 'Map'       |
		| 'e1cib/data/Catalog.IntegrationSettings?ref=b762b13668d0905011eb7663e35d7967' | 'QueryType'           | 'POST'      |
		| 'e1cib/data/Catalog.IntegrationSettings?ref=b762b13668d0905011eb7663e35d7967' | 'ResourceAddress'     | ''          |
		| 'e1cib/data/Catalog.IntegrationSettings?ref=b762b13668d0905011eb7663e35d7967' | 'Ip'                  | 'localhost' |
		| 'e1cib/data/Catalog.IntegrationSettings?ref=b762b13668d0905011eb7663e35d7967' | 'Port'                | '8 080'     |
		| 'e1cib/data/Catalog.IntegrationSettings?ref=b762b13668d0905011eb7663e35d7967' | 'User'                | ''          |
		| 'e1cib/data/Catalog.IntegrationSettings?ref=b762b13668d0905011eb7663e35d7967' | 'Password'            | ''          |
		| 'e1cib/data/Catalog.IntegrationSettings?ref=b762b13668d0905011eb7663e35d7967' | 'Proxy'               | ''          |
		| 'e1cib/data/Catalog.IntegrationSettings?ref=b762b13668d0905011eb7663e35d7967' | 'TimeOut'             | '60'        |
		| 'e1cib/data/Catalog.IntegrationSettings?ref=b762b13668d0905011eb7663e35d7967' | 'SecureConnection'    | ''          |
		| 'e1cib/data/Catalog.IntegrationSettings?ref=b762b13668d0905011eb7663e35d7967' | 'UseOSAuthentication' | 'False'     |
		| 'e1cib/data/Catalog.IntegrationSettings?ref=b762b13668d0905011eb7663e35d7967' | 'Headers'             | 'Map'       |

	// Справочник.ItemKeys

	И я проверяю или создаю для справочника "ItemKeys" объекты:
		| 'Ref'                                                              | 'DeletionMark' | 'Code' | 'Item'                                                          | 'Unit' | 'Specification' | 'AffectPricingMD5' | 'UniqueMD5'                                       | 'ItemKeyID' | 'Description_en'          | 'Description_hash'        | 'Description_ru'          | 'Description_tr'          | 'Height' | 'Length' | 'Volume' | 'Weight' | 'Width' |
		| 'e1cib/data/Catalog.ItemKeys?ref=b762b13668d0905011eb766bf96b2751' | 'False'        | 3      | 'e1cib/data/Catalog.Items?ref=b762b13668d0905011eb766bf96b2750' | ''     | ''              | ''                 | '4D CB F1 F2 F1 F2 40 44 01 6B C8 18 1F CA AC 7C' | ''          | 'Товар без характеристик' | 'Товар без характеристик' | 'Товар без характеристик' | 'Товар без характеристик' |          |          |          |          |         |

	// Справочник.Items

	И я проверяю или создаю для справочника "Items" объекты:
		| 'Ref'                                                           | 'DeletionMark' | 'Code' | 'ItemType'                                                          | 'Unit'                                                          | 'MainPricture'                          | 'Vendor'                                                           | 'ItemID' | 'PackageUnit' | 'Description_en'          | 'Description_hash' | 'Description_ru' | 'Description_tr' | 'Height' | 'Length' | 'Volume' | 'Weight' | 'Width' |
		| 'e1cib/data/Catalog.Items?ref=b762b13668d0905011eb766bf96b2750' | 'False'        | 2      | 'e1cib/data/Catalog.ItemTypes?ref=b762b13668d0905011eb76684b9f6879' | 'e1cib/data/Catalog.Units?ref=b762b13668d0905011eb76684b9f687b' | 'ValueStorage:AQEIAAAAAAAAAO+7v3siVSJ9' | 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d794d' | '58792'  | ''            | 'Товар без характеристик' | ''                 | ''               | ''               |          |          |          |          |         |

	И я перезаполняю для объекта табличную часть "AddAttributes":
		| 'Ref'                                                           | 'Property'                                                                                           | 'Value'                                                                                 |
		| 'e1cib/data/Catalog.Items?ref=b762b13668d0905011eb766bf96b2750' | 'e1cib/data/ChartOfCharacteristicTypes.AddAttributeAndProperty?ref=b762b13668d0905011eb766bf96b275d' | 'e1cib/data/Catalog.AddAttributeAndPropertyValues?ref=b762b13668d0905011eb766bf96b2761' |

	// Справочник.ItemTypes

	И я проверяю или создаю для справочника "ItemTypes" объекты:
		| 'Ref'                                                               | 'DeletionMark' | 'Parent' | 'IsFolder' | 'Code' | 'Type'                   | 'UseSerialLotNumber' | 'Description_en'            | 'Description_hash' | 'Description_ru' | 'Description_tr' | 'UniqueID'                          |
		| 'e1cib/data/Catalog.ItemTypes?ref=b762b13668d0905011eb76684b9f6879' | 'False'        | ''       | 'False'    | 2      | 'Enum.ItemTypes.Product' | 'False'              | 'Товар (без характеристик)' | ''                 | ''               | ''               | '_32c63d8e5ee94926b3c772ab02c5243e' |

	// Справочник.Partners

	И я проверяю или создаю для справочника "Partners" объекты:
		| 'Ref'                                                              | 'DeletionMark' | 'Parent' | 'Code' | 'Customer' | 'Vendor' | 'Employee' | 'Opponent' | 'ManagerSegment'                                                          | 'Description_en'             | 'Description_hash' | 'Description_ru' | 'Description_tr' |
		| 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d794b' | 'False'        | ''       | 1      | 'True'     | 'False'  | 'False'    | 'False'    | 'e1cib/data/Catalog.PartnerSegments?ref=b762b13668d0905011eb7663e35d7955' | 'Клиент 1 (1 соглашение)'    | ''                 | ''               | ''               |
		| 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d794d' | 'False'        | ''       | 3      | 'False'    | 'True'   | 'False'    | 'False'    | ''                                                                        | 'Поставщик 1 (1 соглашение)' | ''                 | ''               | ''               |

	// Справочник.PartnerSegments

	И я проверяю или создаю для справочника "PartnerSegments" объекты:
		| 'Ref'                                                                     | 'DeletionMark' | 'Code' | 'BanOnShipping' | 'Managers' | 'Description_en' | 'Description_hash' | 'Description_ru' | 'Description_tr' |
		| 'e1cib/data/Catalog.PartnerSegments?ref=b762b13668d0905011eb7663e35d7955' | 'False'        | 1      | 'False'         | 'True'     | 'Менеджер 1'     | ''                 | ''               | ''               |
		| 'e1cib/data/Catalog.PartnerSegments?ref=b762b13668d0905011eb76684b9f6864' | 'False'        | 3      | 'False'         | 'False'    | 'Основной'       | ''                 | ''               | ''               |

	// Справочник.PaymentSchedules

	И я проверяю или создаю для справочника "PaymentSchedules" объекты:
		| 'Ref'                                                                      | 'DeletionMark' | 'Code' | 'Description_en'  | 'Description_hash' | 'Description_ru' | 'Description_tr' |
		| 'e1cib/data/Catalog.PaymentSchedules?ref=b762b13668d0905011eb76684b9f686c' | 'False'        | 1      | 'Отсрочка 7 дней' | ''                 | ''               | ''               |

	И я перезаполняю для объекта табличную часть "StagesOfPayment":
		| 'Ref'                                                                      | 'CalculationType'                          | 'ProportionOfPayment' | 'DuePeriod' |
		| 'e1cib/data/Catalog.PaymentSchedules?ref=b762b13668d0905011eb76684b9f686c' | 'Enum.CalculationTypes.PostShipmentCredit' | 100                   | 7           |

	// Справочник.PriceTypes

	И я проверяю или создаю для справочника "PriceTypes" объекты:
		| 'Ref'                                                                | 'DeletionMark' | 'Code' | 'Currency'                                                           | 'ExternalDataProc' | 'ExternalDataProcSettings'              | 'Description_en' | 'Description_hash' | 'Description_ru' | 'Description_tr' |
		| 'e1cib/data/Catalog.PriceTypes?ref=b762b13668d0905011eb76684b9f6866' | 'False'        | 2      | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | ''                 | 'ValueStorage:AQEIAAAAAAAAAO+7v3siVSJ9' | 'Опт'            | ''                 | ''               | ''               |

	// Справочник.RowIDs

	И я проверяю или создаю для справочника "RowIDs" объекты:
		| 'Ref'                                                            | 'DeletionMark' | 'Code' | 'Description'                          | 'AgreementSales'                                                     | 'Company'                                                           | 'CurrencySales'                                                      | 'LegalNameSales'                                                    | 'PartnerSales'                                                     | 'PriceIncludeTaxSales' | 'Store'                                                          | 'Unit'                                                          | 'ItemKey'                                                          | 'Branch' | 'Basis'                                                                | 'RowID'                                | 'ProcurementMethod' | 'StoreSender' | 'StoreReceiver' | 'TransactionTypeSC' | 'TransactionTypeGR'                                    | 'TransactionType' | 'Requester' | 'AgreementPurchases' | 'PartnerPurchases' | 'LegalNamePurchases' | 'PriceIncludeTaxPurchases' | 'CurrencyPurchases' |
		| 'e1cib/data/Catalog.RowIDs?ref=87990050568cf56211eed5aede6925eb' | 'False'        | 35     | '3be0e26e-b501-46a3-8905-231f8650d22d' | 'e1cib/data/Catalog.Agreements?ref=b762b13668d0905011eb76684b9f6867' | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7663e35d7964' | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7674324a4a2a' | 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d794b' | 'True'                 | 'e1cib/data/Catalog.Stores?ref=b762b13668d0905011eb76684b9f6861' | 'e1cib/data/Catalog.Units?ref=b762b13668d0905011eb76684b9f687b' | 'e1cib/data/Catalog.ItemKeys?ref=b762b13668d0905011eb766bf96b2751' | ''       | 'e1cib/data/Document.SalesReturn?ref=87990050568cf56211eed5aede6925ec' | '3be0e26e-b501-46a3-8905-231f8650d22d' | ''                  | ''            | ''              | ''                  | 'Enum.GoodsReceiptTransactionTypes.ReturnFromCustomer' | ''                | ''          | ''                   | ''                 | ''                   | 'False'                    | ''                  |

	// Справочник.Stores

	И я проверяю или создаю для справочника "Stores" объекты:
		| 'Ref'                                                            | 'DeletionMark' | 'Code' | 'UseGoodsReceipt' | 'UseShipmentConfirmation' | 'Transit' | 'NegativeStockControl' | 'Description_en'                | 'Description_hash' | 'Description_ru' | 'Description_tr' |
		| 'e1cib/data/Catalog.Stores?ref=b762b13668d0905011eb76684b9f6861' | 'False'        | 1      | 'True'            | 'True'                    | 'False'   | 'True'                 | 'Склад 1 (с контролем остатка)' | ''                 | ''               | ''               |

	// Справочник.Taxes

	И я проверяю или создаю для справочника "Taxes" объекты:
		| 'Ref'                                                           | 'DeletionMark' | 'Code' | 'ExternalDataProcSettings'                                                                                                                                                                                                                                                  | 'ExternalDataProc'                                                         | 'Type'              | 'Description_en' | 'Description_hash' | 'Description_ru' | 'Description_tr' |
		| 'e1cib/data/Catalog.Taxes?ref=b762b13668d0905011eb7663e35d7970' | 'False'        | 1      | 'ValueStorage:AgFTS2/0iI3BTqDV67a9oKcNtc09CgJBDAVgbYW9xNhuYLKT2Z3YeQX1Apk/EMRqC2VZPJiFR/IK7mgh2FiIj0cgKfJd5rNn7tfboJaqpsY4jRyhS8RAOTAwRg++9Wwx2pBdqqvFYMqYqraqVjs5baRPaizH8sU64mwNQiJsgVAjCE1rCCYmZjGeuxp1u9JfMlaL8UNaH+Vw7vcB35wQae8aD9YXLrkE4jJDy7kTdKyFceLoF675E/fqAw==' | 'e1cib/data/Catalog.ExternalDataProc?ref=b762b13668d0905011eb7663e35d796f' | 'Enum.TaxType.Rate' | 'НДС'            | ''                 | ''               | ''               |

	И я перезаполняю для объекта табличную часть "TaxRates":
		| 'Ref'                                                           | 'TaxRate'                                                          |
		| 'e1cib/data/Catalog.Taxes?ref=b762b13668d0905011eb7663e35d7970' | 'e1cib/data/Catalog.TaxRates?ref=b762b13668d0905011eb7663e35d796c' |
		| 'e1cib/data/Catalog.Taxes?ref=b762b13668d0905011eb7663e35d7970' | 'e1cib/data/Catalog.TaxRates?ref=b762b13668d0905011eb7663e35d796d' |
		| 'e1cib/data/Catalog.Taxes?ref=b762b13668d0905011eb7663e35d7970' | 'e1cib/data/Catalog.TaxRates?ref=b762b13668d0905011eb7663e35d796e' |

	И я перезаполняю для объекта табличную часть "UseDocuments":
		| 'Ref'                                                           | 'DocumentName'        |
		| 'e1cib/data/Catalog.Taxes?ref=b762b13668d0905011eb7663e35d7970' | 'SalesOrder'          |
		| 'e1cib/data/Catalog.Taxes?ref=b762b13668d0905011eb7663e35d7970' | 'SalesOrderClosing'   |
		| 'e1cib/data/Catalog.Taxes?ref=b762b13668d0905011eb7663e35d7970' | 'SalesInvoice'        |
		| 'e1cib/data/Catalog.Taxes?ref=b762b13668d0905011eb7663e35d7970' | 'SalesReturnOrder'    |
		| 'e1cib/data/Catalog.Taxes?ref=b762b13668d0905011eb7663e35d7970' | 'SalesReturn'         |
		| 'e1cib/data/Catalog.Taxes?ref=b762b13668d0905011eb7663e35d7970' | 'PurchaseOrder'       |
		| 'e1cib/data/Catalog.Taxes?ref=b762b13668d0905011eb7663e35d7970' | 'PurchaseInvoice'     |
		| 'e1cib/data/Catalog.Taxes?ref=b762b13668d0905011eb7663e35d7970' | 'PurchaseReturnOrder' |
		| 'e1cib/data/Catalog.Taxes?ref=b762b13668d0905011eb7663e35d7970' | 'PurchaseReturn'      |
		| 'e1cib/data/Catalog.Taxes?ref=b762b13668d0905011eb7663e35d7970' | 'CashExpense'         |
		| 'e1cib/data/Catalog.Taxes?ref=b762b13668d0905011eb7663e35d7970' | 'CashRevenue'         |
		| 'e1cib/data/Catalog.Taxes?ref=b762b13668d0905011eb7663e35d7970' | 'RetailSalesReceipt'  |
		| 'e1cib/data/Catalog.Taxes?ref=b762b13668d0905011eb7663e35d7970' | 'RetailReturnReceipt' |

	// Справочник.TaxRates

	И я проверяю или создаю для справочника "TaxRates" объекты:
		| 'Ref'                                                              | 'DeletionMark' | 'Code' | 'Rate' | 'Description_en' | 'Description_hash' | 'Description_ru' | 'Description_tr' |
		| 'e1cib/data/Catalog.TaxRates?ref=b762b13668d0905011eb7663e35d796c' | 'False'        | 1      | 20     | '20%'            | ''                 | ''               | ''               |
		| 'e1cib/data/Catalog.TaxRates?ref=b762b13668d0905011eb7663e35d796d' | 'False'        | 2      |        | '0%'             | ''                 | ''               | ''               |
		| 'e1cib/data/Catalog.TaxRates?ref=b762b13668d0905011eb7663e35d796e' | 'False'        | 3      |        | 'без НДС'        | ''                 | ''               | ''               |

	// Справочник.Units

	И я проверяю или создаю для справочника "Units" объекты:
		| 'Ref'                                                           | 'DeletionMark' | 'Code' | 'Item' | 'Quantity' | 'BasisUnit' | 'UOM' | 'Description_en' | 'Description_hash' | 'Description_ru' | 'Description_tr' | 'Height' | 'Length' | 'Volume' | 'Weight' | 'Width' |
		| 'e1cib/data/Catalog.Units?ref=b762b13668d0905011eb76684b9f687b' | 'False'        | 1      | ''     | 1          | ''          | ''    | 'шт'             | ''                 | ''               | ''               |          |          |          |          |         |

	// Справочник.UserGroups

	И я проверяю или создаю для справочника "UserGroups" объекты:
		| 'Ref'                                                                | 'DeletionMark' | 'Code' | 'Description_en' | 'Description_hash' | 'Description_ru' | 'Description_tr' |
		| 'e1cib/data/Catalog.UserGroups?ref=b762b13668d0905011eb767f10805e2c' | 'False'        | 1      | 'Main'           | ''                 | ''               | ''               |

	// Справочник.Users

	И я проверяю или создаю для справочника "Users" объекты:
		| 'Ref'                                                           | 'DeletionMark' | 'Code' | 'Description' | 'InfobaseUserID'                       | 'Partner' | 'LocalizationCode' | 'ShowInList' | 'UserGroup'                                                          | 'InterfaceLocalizationCode' | 'FormScaleVariant' | 'Description_en' | 'Description_hash' | 'Description_ru' | 'Description_tr' |
		| 'e1cib/data/Catalog.Users?ref=aa7f120ed92fbced11eb13d7279770c0' | 'False'        | 2      | 'CI'          | 'd2dd393f-30ff-4f95-bc3a-66cf68310df1' | ''        | 'en'               | 'True'       | 'e1cib/data/Catalog.UserGroups?ref=b762b13668d0905011eb767f10805e2c' | 'ru'                        | ''                 | 'CI'             | ''                 | ''               | ''               |

	// ПланВидовХарактеристик.AddAttributeAndProperty

	И я проверяю или создаю для плана видов характеристик "AddAttributeAndProperty" объекты:
		| 'Ref'                                                                                                | 'DeletionMark' | 'Parent' | 'IsFolder' | 'Icon'                                  | 'isIconSet' | 'Description_en' | 'Description_hash' | 'Description_ru' | 'Description_tr' | 'UniqueID'                          |
		| 'e1cib/data/ChartOfCharacteristicTypes.AddAttributeAndProperty?ref=b762b13668d0905011eb766bf96b275d' | 'False'        | ''       | 'False'    | 'ValueStorage:AQEIAAAAAAAAAO+7v3siVSJ9' | 'False'     | 'Бренд'          | ''                 | ''               | ''               | '_4355827b63dc41b8b540f65790e07f5d' |

	// ПланВидовХарактеристик.CurrencyMovementType

	И я проверяю или создаю для плана видов характеристик "CurrencyMovementType" объекты:
		| 'Ref'                                                                                             | 'DeletionMark' | 'Currency'                                                           | 'Source'                                                                      | 'Type'                        | 'DeferredCalculation' | 'Description_en'            | 'Description_hash' | 'Description_ru' | 'Description_tr' |
		| 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d796b' | 'False'        | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | 'e1cib/data/Catalog.IntegrationSettings?ref=b762b13668d0905011eb7663e35d7966' | 'Enum.CurrencyType.Agreement' | 'False'               | 'Валюта соглашения, USD'    | ''                 | ''               | ''               |
		| 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d796a' | 'False'        | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795f' | 'e1cib/data/Catalog.IntegrationSettings?ref=b762b13668d0905011eb7663e35d7966' | 'Enum.CurrencyType.Legal'     | 'False'               | 'В локальной валюте страны' | ''                 | ''               | ''               |
		| 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d7968' | 'False'        | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | 'e1cib/data/Catalog.IntegrationSettings?ref=b762b13668d0905011eb7663e35d7966' | 'Enum.CurrencyType.Reporting' | 'False'               | 'В валюте отчетности'       | ''                 | ''               | ''               |
		| 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d7969' | 'False'        | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795f' | 'e1cib/data/Catalog.IntegrationSettings?ref=b762b13668d0905011eb7663e35d7967' | 'Enum.CurrencyType.Budgeting' | 'True'                | 'В валюте бюджетирования'   | ''                 | ''               | ''               |

	// Документ.SalesReturn

	И я проверяю или создаю для документа "SalesReturn" объекты:
		| 'Ref'                                                                  | 'DeletionMark' | 'Number' | 'Date'                | 'Posted' | 'Agreement'                                                          | 'BaseDocument' | 'Company'                                                           | 'Currency'                                                           | 'DateOfShipment'     | 'LegalName'                                                         | 'ManagerSegment' | 'Partner'                                                          | 'PriceIncludeTax' | 'DueAsAdvance' | 'LegalNameContract' | 'Author'                                                        | 'Branch' | 'Description' | 'DocumentAmount' |
		| 'e1cib/data/Document.SalesReturn?ref=87990050568cf56211eed5aede6925ec' | 'False'        | 3        | '27.02.2024 23:49:43' | 'True'   | 'e1cib/data/Catalog.Agreements?ref=b762b13668d0905011eb76684b9f6867' | ''             | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7663e35d7964' | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | '01.01.0001 0:00:00' | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7674324a4a2a' | ''               | 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d794b' | 'True'            | 'False'        | ''                  | 'e1cib/data/Catalog.Users?ref=aa7f120ed92fbced11eb13d7279770c0' | ''       | ''            | 22500            |

	И я перезаполняю для объекта табличную часть "ItemList":
		| 'Ref'                                                                  | 'Key'                                  | 'Cancel' | 'ItemKey'                                                          | 'Store'                                                          | 'NetAmount' | 'OffersAmount' | 'Price' | 'PriceType'                                                          | 'Quantity' | 'TaxAmount' | 'TotalAmount' | 'Unit'                                                          | 'SalesReturnOrder' | 'SalesInvoice' | 'DontCalculateRow' | 'QuantityInBaseUnit' | 'ProfitLossCenter' | 'RevenueType' | 'AdditionalAnalytic' | 'UseGoodsReceipt' | 'ReturnReason' |
		| 'e1cib/data/Document.SalesReturn?ref=87990050568cf56211eed5aede6925ec' | '3be0e26e-b501-46a3-8905-231f8650d22d' | 'False'  | 'e1cib/data/Catalog.ItemKeys?ref=b762b13668d0905011eb766bf96b2751' | 'e1cib/data/Catalog.Stores?ref=b762b13668d0905011eb76684b9f6861' | 18750       |                | 450     | 'e1cib/data/Catalog.PriceTypes?ref=b762b13668d0905011eb76684b9f6866' | 50         | 3750        | 22500         | 'e1cib/data/Catalog.Units?ref=b762b13668d0905011eb76684b9f687b' | ''                 | ''             | 'False'            | 50                   | ''                 | ''            | ''                   | 'True'            | ''             |

	И я перезаполняю для объекта табличную часть "TaxList":
		| 'Ref'                                                                  | 'Key'                                  | 'Tax'                                                           | 'Amount' | 'Analytics' | 'TaxRate'                                                          | 'IncludeToTotalAmount' | 'ManualAmount' |
		| 'e1cib/data/Document.SalesReturn?ref=87990050568cf56211eed5aede6925ec' | '3be0e26e-b501-46a3-8905-231f8650d22d' | 'e1cib/data/Catalog.Taxes?ref=b762b13668d0905011eb7663e35d7970' | 3750     | ''          | 'e1cib/data/Catalog.TaxRates?ref=b762b13668d0905011eb7663e35d796c' | 'True'                 | 3750           |

	И я перезаполняю для объекта табличную часть "Currencies":
		| 'Ref'                                                                  | 'CurrencyFrom'                                                       | 'Rate' | 'ReverseRate' | 'ShowReverseRate' | 'Multiplicity' | 'Key' | 'MovementType'                                                                                    | 'Amount' | 'IsFixed' |
		| 'e1cib/data/Document.SalesReturn?ref=87990050568cf56211eed5aede6925ec' | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | 1      | 1             | 'False'           | 1              | ''    | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d796b' | 22500    | 'False'   |
		| 'e1cib/data/Document.SalesReturn?ref=87990050568cf56211eed5aede6925ec' | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | 0.859  | 1.1641        | 'False'           | 1              | ''    | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d796a' | 19327.5  | 'False'   |
		| 'e1cib/data/Document.SalesReturn?ref=87990050568cf56211eed5aede6925ec' | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | 1      | 1             | 'False'           | 1              | ''    | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d7968' | 22500    | 'False'   |
		| 'e1cib/data/Document.SalesReturn?ref=87990050568cf56211eed5aede6925ec' | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' |        |               | 'False'           |                | ''    | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d7969' |          | 'False'   |

	И я перезаполняю для объекта табличную часть "RowIDInfo":
		| 'Ref'                                                                  | 'Key'                                  | 'RowID'                                | 'Quantity' | 'Basis' | 'CurrentStep' | 'NextStep'                                    | 'RowRef'                                                         | 'BasisKey' |
		| 'e1cib/data/Document.SalesReturn?ref=87990050568cf56211eed5aede6925ec' | '3be0e26e-b501-46a3-8905-231f8650d22d' | '3be0e26e-b501-46a3-8905-231f8650d22d' | 50         | ''      | ''            | 'e1cib/data/Catalog.MovementRules?refName=GR' | 'e1cib/data/Catalog.RowIDs?ref=87990050568cf56211eed5aede6925eb' | ''         |
Сценарий: Тест отчета по возвратам
	* Заполнение данных
		//здесь заполняются данные из доп фичи
	* Открытие отчета
		И В командном интерфейсе я выбираю "Отчеты" "D2001 Продажи"
		Тогда открылось окно "D2001 Продажи"
		И в табличном документе 'Result' я перехожу к ячейке "R1C1"
		И я нажимаю на кнопку с именем 'FormStandardSettings'
		И я нажимаю на кнопку с именем 'FormGenerate'
		И я жду когда в табличном документе "Result" заполнится ячейка "R7C2" в течение 20 секунд
		И в табличном документе "Result" я перехожу к ячейке "R7C2"
				
		И Я запоминаю в переменную "ИтогПроверки" значение "Ложь"
		И Я запоминаю в переменную "ТекущееЗначение" значение " "
		И пока выражение встроенного языка '$ТекущееЗначение$ <> ""' истинно тогда
			попытка
				И я запоминаю значение текущей ячейки "Result" в переменную "ТекущееЗначение"
				И переменная '$ТекущееЗначение$' имеет значение "-1,000"
				//И в табличном документе "Result" значения в текущей ячейке соответствуют условию  "меньше"  0
				Тогда Я запоминаю в переменную "ИтогПроверки" значение "Истина"
				Тогда я прерываю цикл
			Исключение					
			
			И в табличном документе "Result" я перехожу на 1 ячеек вниз
		КонецЦикла
		И переменная '$ИтогПроверки$' имеет значение "Истина"
			