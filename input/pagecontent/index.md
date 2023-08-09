### 소개

MI Base는 국내 보건의료데이터를 위한 핵심공통 정보모델로 상호운용성과 데이터의 질을 보장하는 한국형 FHIR IG(상세규격)으로, 국내 보건의료데이터 교류에 사용하는 FHIR 리소스 및 FHIR RESTful API에 대한 최소한의 제약조건을 정의한다. MI Base는 국내 보건의료데이터 교류 시스템이 갖추어야 할 공통 요구사항을 명시하여 시스템간 상호운용성을 확보하고, 국내 보건의료데이터를 구성하는 기초 정보모델을 제공함으로써 데이터를 유의미하게 활용할 수 있는 토대를 마련한다. 이를 통해 국내 보건의료데이터 교류를 촉진하고 특정 사용 사례에 대한 추가 제약조건 개발을 용이하게 한다.
또한, KR CDI(한국형 핵심교류데이터) 개발에 발맞추어 MI Base 구현 시 KR CDI를 준수할 수 있도록 지속적으로 이를 반영하고 업데이트할 예정이다.

### 배경

세계 각 국가들은 국가차원의 FHIR IG를 개발하여 자국의 의료정보교류 상호운용성 확보와 더불어 의료데이터의 질을 높이기 위해 노력하고 있다. 이러한 FHIR IG의 대표적인 예로는 US Core(미국), AU Base(호주), UK Core(영국), CH Core(스위스) 등이 있고, 이 외에도 캐나다, 이탈리아, 인도 등 많은 나라들이 국가수준의 FHIR IG를 개발 중이다. 이에 발맞추어 한국도 한국보건의료정보원에서 MI Base를 개발 중이다.

MI Base의 목적은 다음과 같다.

- 한국형 FHIR IG를 개발하여 국내 보건의료데이터 활용 생태계 기반을 마련
- 국내 의료정보교류 상호운용성 확보와 의료데이터 질 향상
- 특정 사용 사례에 대한 기반 정보모델 제공
- SMART on FHIR, Blue Button 2.0 등과 같은 다양한 헬스케어 서비스 개발의 활성화

### 문서의 내용 및 안내

MI Base는 한국에서 사용하는 FHIR 리소스 및 FHIR RESTful API 등을 정의하고 이에 대한 상세한 설명을 문서화하여 제공한다. MI Base를 구성하는 문서의 목록과 각 문서의 내용은 다음과 같다.

- IG Home: 본 페이지. MI Base에 대한 소개 및 개발 배경 등에 관한 정보 제공.
- Conformance: MI Base 적합성을 준수하기 위한 규칙들을 제공.
  - General Requirements: MI Base를 따르는 모든 시스템과 프로파일에 대한 공통적인 요구 사항을 설명.
  - Mandatory and Must Support: MI Base의 의무 요소와 필수 지원 요소에 대한 요구 사항을 설명.
- Guidance: 사용 사례 별로 MI Base 프로파일과 기능에 대한 사용 지침을 제공.
  - General Guidance: MI Base 프로파일과 기능을 사용하는 모든 시스템에 대한 공통 지침과 요구 사항을 정의.
- FHIR Artifacts: MI Base에서 정의한 모든 FHIR 리소스에 대한 상세한 설명 및 정의를 제공.
  - Profiles and Extensions: MI Base에서 정의한 프로파일 및 확장 목록을 제공함. 각 프로파일 페이지는 의무 요소 및 필수 지원 요소, 사용 가능한 검색 매개변수 목록 등을 제공.
  - Search Parameters: MI Base에서 제공하는 검색 매개변수 목록을 제공. 각 매개변수는 매개변수 유형 및 검색 대상이 되는 리소스와 요소, 구현 기대치 등을 정의함.
  - Terminology: MI Base에서 정의한 ValueSet과 CodeSystem 리소스 목록 제공.
  - MI Base Server Capability Statement: MI Base를 구현한 서버에 요구되는 기능과 각 기능 별 구현 기대치를 FHIR CapabilityStatement 리소스 형태로 정의하여 제공.
  - MI Base Client Capability Statement: MI Base를 구현한 클라이언트에 요구되는 기능과 각 기능 별 구현 기대치를 FHIR CapabilityStatement 리소스 형태로 정의하여 제공.
- Examples: MI Base를 적용한 시스템에서 생성 및 활용하는 FHIR Resource 예제를 제공. 각 FHIR Resource 예제는 하나 이상의 MI Base 프로파일을 준수함.
- Downloads: 다운로드 가능한 산출물에 대한 링크를 제공.
- Change Log: MI Base 버전 별 수정 사항을 제공.
- History: MI Base 버전 별 설명과 링크를 제공.

### MI Base Profiles

MI Base에서 Profiling한 FHIR 리소스들은 아래와 같다.

- [MI Base Patient profile](StructureDefinition-MIBasePatientProfile.html)
- [MI Base Practitioner profile](StructureDefinition-MIBasePractitionerProfile.html)
- [MI Base PractitionerRole profile](StructureDefinition-MIBasePractitionerRoleProfile.html)
- [MI Base Organization profile](StructureDefinition-MIBaseOrganizationProfile.html)
- [MI Base Encounter profile](StructureDefinition-MIBaseEncounterProfile.html)
- [MI Base Condition profile](StructureDefinition-MIBaseConditionProfile.html)
- [MI Base Immunization profile](StructureDefinition-MIBaseImmunizationProfile.html)
- [MI Base Medication profile](StructureDefinition-MIBaseMedicationProfile.html)
- [MI Base MedicationRequest profile](StructureDefinition-MIBaseMedicationRequestProfile.html)
- [MI Base Laboratory Result Observation profile](StructureDefinition-MIBaseLaboratoryResultObservationProfile.html)
- [MI Base Procedure profile](StructureDefinition-MIBaseProcedureProfile.html)
- [MI Base ServiceRequest Profile](StructureDefinition-MIBaseServiceRequestProfile.html)
- [MI Base Vital Signs profile](StructureDefinition-MIBaseVitalSignsProfile.html)
  - [MI Base Blood Pressure profile](StructureDefinition-MIBaseBloodPressureProfile.html)
  - [MI Base BMI profile](StructureDefinition-MIBaseBMIProfile.html)
  - [MI Base Body Height profile](StructureDefinition-MIBaseBodyHeightProfile.html)
  - [MI Base Body Weight profile](StructureDefinition-MIBaseBodyWeightProfile.html)
  - [MI Base Body Temperature profile](StructureDefinition-MIBaseBodyTemperatureProfile.html)
  - [MI Base Glasgow Coma Scale profile](StructureDefinition-MIBaseGlasgowComaScaleProfile.html)
  - [MI Base Heart Rate profile](StructureDefinition-MIBaseHeartRateProfile.html)
  - [MI Base Pulse Oximetry profile](StructureDefinition-MIBasePulseOximetryProfile.html)
  - [MI Base Respiratory Rate profile](StructureDefinition-MIBaseRespiratoryRateProfile.html)
