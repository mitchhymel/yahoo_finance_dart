class QuoteSummaryResponse {
	QuoteSummary? quoteSummary;

	QuoteSummaryResponse({this.quoteSummary});

	QuoteSummaryResponse.fromJson(Map<String, dynamic> json) {
		quoteSummary = json['quoteSummary'] != null ? new QuoteSummary.fromJson(json['quoteSummary']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.quoteSummary != null) {
      data['quoteSummary'] = this.quoteSummary!.toJson();
    }
		return data;
	}
}

class QuoteSummary {
	List<Result>? result;
	dynamic error;

	QuoteSummary({this.result, this.error});

	QuoteSummary.fromJson(Map<String, dynamic> json) {
		if (json['result'] != null) {
			result = [];
			json['result'].forEach((v) { result!.add(new Result.fromJson(v)); });
		}
		error = json['error'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.result != null) {
      data['result'] = this.result!.map((v) => v.toJson()).toList();
    }
		data['error'] = this.error;
		return data;
	}
}

class Result {
	AssetProfile? assetProfile;
	RecommendationTrend? recommendationTrend;
	CashflowStatementHistory? cashflowStatementHistory;
	IndexTrend? indexTrend;
	DefaultKeyStatistics? defaultKeyStatistics;
	IndustryTrend? industryTrend;
	QuoteType? quoteType;
	IncomeStatementHistory? incomeStatementHistory;
	FundOwnership? fundOwnership;
	SummaryDetail? summaryDetail;
	InsiderHolders? insiderHolders;
	CalendarEvents? calendarEvents;
	UpgradeDowngradeHistory? upgradeDowngradeHistory;
	Price? price;
	BalanceSheetHistory? balanceSheetHistory;
	RecommendationTrend? earningsTrend;
	SecFilings? secFilings;
	FundOwnership? institutionOwnership;
	MajorHoldersBreakdown? majorHoldersBreakdown;
	BalanceSheetHistory? balanceSheetHistoryQuarterly;
	EarningsHistory? earningsHistory;
	MajorDirectHolders? majorDirectHolders;
	SummaryProfile? summaryProfile;
	NetSharePurchaseActivity? netSharePurchaseActivity;
	InsiderTransactions? insiderTransactions;
	IndustryTrend? sectorTrend;
	IncomeStatementHistory? incomeStatementHistoryQuarterly;
	CashflowStatementHistory? cashflowStatementHistoryQuarterly;
	TotalPay? earnings;
	FinancialData? financialData;

	Result({this.assetProfile, this.recommendationTrend, this.cashflowStatementHistory, this.indexTrend, this.defaultKeyStatistics, this.industryTrend, this.quoteType, this.incomeStatementHistory, this.fundOwnership, this.summaryDetail, this.insiderHolders, this.calendarEvents, this.upgradeDowngradeHistory, this.price, this.balanceSheetHistory, this.earningsTrend, this.secFilings, this.institutionOwnership, this.majorHoldersBreakdown, this.balanceSheetHistoryQuarterly, this.earningsHistory, this.majorDirectHolders, this.summaryProfile, this.netSharePurchaseActivity, this.insiderTransactions, this.sectorTrend, this.incomeStatementHistoryQuarterly, this.cashflowStatementHistoryQuarterly, this.earnings, this.financialData});

	Result.fromJson(Map<String, dynamic> json) {
		assetProfile = json['assetProfile'] != null ? new AssetProfile.fromJson(json['assetProfile']) : null;
		recommendationTrend = json['recommendationTrend'] != null ? new RecommendationTrend.fromJson(json['recommendationTrend']) : null;
		cashflowStatementHistory = json['cashflowStatementHistory'] != null ? new CashflowStatementHistory.fromJson(json['cashflowStatementHistory']) : null;
		indexTrend = json['indexTrend'] != null ? new IndexTrend.fromJson(json['indexTrend']) : null;
		defaultKeyStatistics = json['defaultKeyStatistics'] != null ? new DefaultKeyStatistics.fromJson(json['defaultKeyStatistics']) : null;
		industryTrend = json['industryTrend'] != null ? new IndustryTrend.fromJson(json['industryTrend']) : null;
		quoteType = json['quoteType'] != null ? new QuoteType.fromJson(json['quoteType']) : null;
		incomeStatementHistory = json['incomeStatementHistory'] != null ? new IncomeStatementHistory.fromJson(json['incomeStatementHistory']) : null;
		fundOwnership = json['fundOwnership'] != null ? new FundOwnership.fromJson(json['fundOwnership']) : null;
		summaryDetail = json['summaryDetail'] != null ? new SummaryDetail.fromJson(json['summaryDetail']) : null;
		insiderHolders = json['insiderHolders'] != null ? new InsiderHolders.fromJson(json['insiderHolders']) : null;
		calendarEvents = json['calendarEvents'] != null ? new CalendarEvents.fromJson(json['calendarEvents']) : null;
		upgradeDowngradeHistory = json['upgradeDowngradeHistory'] != null ? new UpgradeDowngradeHistory.fromJson(json['upgradeDowngradeHistory']) : null;
		price = json['price'] != null ? new Price.fromJson(json['price']) : null;
		balanceSheetHistory = json['balanceSheetHistory'] != null ? new BalanceSheetHistory.fromJson(json['balanceSheetHistory']) : null;
		earningsTrend = json['earningsTrend'] != null ? new RecommendationTrend.fromJson(json['earningsTrend']) : null;
		secFilings = json['secFilings'] != null ? new SecFilings.fromJson(json['secFilings']) : null;
		institutionOwnership = json['institutionOwnership'] != null ? new FundOwnership.fromJson(json['institutionOwnership']) : null;
		majorHoldersBreakdown = json['majorHoldersBreakdown'] != null ? new MajorHoldersBreakdown.fromJson(json['majorHoldersBreakdown']) : null;
		balanceSheetHistoryQuarterly = json['balanceSheetHistoryQuarterly'] != null ? new BalanceSheetHistory.fromJson(json['balanceSheetHistoryQuarterly']) : null;
		earningsHistory = json['earningsHistory'] != null ? new EarningsHistory.fromJson(json['earningsHistory']) : null;
		majorDirectHolders = json['majorDirectHolders'] != null ? new MajorDirectHolders.fromJson(json['majorDirectHolders']) : null;
		summaryProfile = json['summaryProfile'] != null ? new SummaryProfile.fromJson(json['summaryProfile']) : null;
		netSharePurchaseActivity = json['netSharePurchaseActivity'] != null ? new NetSharePurchaseActivity.fromJson(json['netSharePurchaseActivity']) : null;
		insiderTransactions = json['insiderTransactions'] != null ? new InsiderTransactions.fromJson(json['insiderTransactions']) : null;
		sectorTrend = json['sectorTrend'] != null ? new IndustryTrend.fromJson(json['sectorTrend']) : null;
		incomeStatementHistoryQuarterly = json['incomeStatementHistoryQuarterly'] != null ? new IncomeStatementHistory.fromJson(json['incomeStatementHistoryQuarterly']) : null;
		cashflowStatementHistoryQuarterly = json['cashflowStatementHistoryQuarterly'] != null ? new CashflowStatementHistory.fromJson(json['cashflowStatementHistoryQuarterly']) : null;
		earnings = json['earnings'] != null ? new TotalPay.fromJson(json['earnings']) : null;
		financialData = json['financialData'] != null ? new FinancialData.fromJson(json['financialData']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.assetProfile != null) {
      data['assetProfile'] = this.assetProfile!.toJson();
    }
		if (this.recommendationTrend != null) {
      data['recommendationTrend'] = this.recommendationTrend!.toJson();
    }
		if (this.cashflowStatementHistory != null) {
      data['cashflowStatementHistory'] = this.cashflowStatementHistory!.toJson();
    }
		if (this.indexTrend != null) {
      data['indexTrend'] = this.indexTrend!.toJson();
    }
		if (this.defaultKeyStatistics != null) {
      data['defaultKeyStatistics'] = this.defaultKeyStatistics!.toJson();
    }
		if (this.industryTrend != null) {
      data['industryTrend'] = this.industryTrend!.toJson();
    }
		if (this.quoteType != null) {
      data['quoteType'] = this.quoteType!.toJson();
    }
		if (this.incomeStatementHistory != null) {
      data['incomeStatementHistory'] = this.incomeStatementHistory!.toJson();
    }
		if (this.fundOwnership != null) {
      data['fundOwnership'] = this.fundOwnership!.toJson();
    }
		if (this.summaryDetail != null) {
      data['summaryDetail'] = this.summaryDetail!.toJson();
    }
		if (this.insiderHolders != null) {
      data['insiderHolders'] = this.insiderHolders!.toJson();
    }
		if (this.calendarEvents != null) {
      data['calendarEvents'] = this.calendarEvents!.toJson();
    }
		if (this.upgradeDowngradeHistory != null) {
      data['upgradeDowngradeHistory'] = this.upgradeDowngradeHistory!.toJson();
    }
		if (this.price != null) {
      data['price'] = this.price!.toJson();
    }
		if (this.balanceSheetHistory != null) {
      data['balanceSheetHistory'] = this.balanceSheetHistory!.toJson();
    }
		if (this.earningsTrend != null) {
      data['earningsTrend'] = this.earningsTrend!.toJson();
    }
		if (this.secFilings != null) {
      data['secFilings'] = this.secFilings!.toJson();
    }
		if (this.institutionOwnership != null) {
      data['institutionOwnership'] = this.institutionOwnership!.toJson();
    }
		if (this.majorHoldersBreakdown != null) {
      data['majorHoldersBreakdown'] = this.majorHoldersBreakdown!.toJson();
    }
		if (this.balanceSheetHistoryQuarterly != null) {
      data['balanceSheetHistoryQuarterly'] = this.balanceSheetHistoryQuarterly!.toJson();
    }
		if (this.earningsHistory != null) {
      data['earningsHistory'] = this.earningsHistory!.toJson();
    }
		if (this.majorDirectHolders != null) {
      data['majorDirectHolders'] = this.majorDirectHolders!.toJson();
    }
		if (this.summaryProfile != null) {
      data['summaryProfile'] = this.summaryProfile!.toJson();
    }
		if (this.netSharePurchaseActivity != null) {
      data['netSharePurchaseActivity'] = this.netSharePurchaseActivity!.toJson();
    }
		if (this.insiderTransactions != null) {
      data['insiderTransactions'] = this.insiderTransactions!.toJson();
    }
		if (this.sectorTrend != null) {
      data['sectorTrend'] = this.sectorTrend!.toJson();
    }
		if (this.incomeStatementHistoryQuarterly != null) {
      data['incomeStatementHistoryQuarterly'] = this.incomeStatementHistoryQuarterly!.toJson();
    }
		if (this.cashflowStatementHistoryQuarterly != null) {
      data['cashflowStatementHistoryQuarterly'] = this.cashflowStatementHistoryQuarterly!.toJson();
    }
		if (this.earnings != null) {
      data['earnings'] = this.earnings!.toJson();
    }
		if (this.financialData != null) {
      data['financialData'] = this.financialData!.toJson();
    }
		return data;
	}
}

class AssetProfile {
	String? address1;
	String? city;
	String? state;
	String? zip;
	String? country;
	String? phone;
	String? website;
	String? industry;
	String? sector;
	String? longBusinessSummary;
	int? fullTimeEmployees;
	List<CompanyOfficers>? companyOfficers;
	int? auditRisk;
	int? boardRisk;
	int? compensationRisk;
	int? shareHolderRightsRisk;
	int? overallRisk;
	int? governanceEpochDate;
	int? compensationAsOfEpochDate;
	int? maxAge;

	AssetProfile({this.address1, this.city, this.state, this.zip, this.country, this.phone, this.website, this.industry, this.sector, this.longBusinessSummary, this.fullTimeEmployees, this.companyOfficers, this.auditRisk, this.boardRisk, this.compensationRisk, this.shareHolderRightsRisk, this.overallRisk, this.governanceEpochDate, this.compensationAsOfEpochDate, this.maxAge});

	AssetProfile.fromJson(Map<String, dynamic> json) {
		address1 = json['address1'];
		city = json['city'];
		state = json['state'];
		zip = json['zip'];
		country = json['country'];
		phone = json['phone'];
		website = json['website'];
		industry = json['industry'];
		sector = json['sector'];
		longBusinessSummary = json['longBusinessSummary'];
		fullTimeEmployees = json['fullTimeEmployees'];
		if (json['companyOfficers'] != null) {
			companyOfficers = [];
			json['companyOfficers'].forEach((v) { companyOfficers!.add(new CompanyOfficers.fromJson(v)); });
		}
		auditRisk = json['auditRisk'];
		boardRisk = json['boardRisk'];
		compensationRisk = json['compensationRisk'];
		shareHolderRightsRisk = json['shareHolderRightsRisk'];
		overallRisk = json['overallRisk'];
		governanceEpochDate = json['governanceEpochDate'];
		compensationAsOfEpochDate = json['compensationAsOfEpochDate'];
		maxAge = json['maxAge'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['address1'] = this.address1;
		data['city'] = this.city;
		data['state'] = this.state;
		data['zip'] = this.zip;
		data['country'] = this.country;
		data['phone'] = this.phone;
		data['website'] = this.website;
		data['industry'] = this.industry;
		data['sector'] = this.sector;
		data['longBusinessSummary'] = this.longBusinessSummary;
		data['fullTimeEmployees'] = this.fullTimeEmployees;
		if (this.companyOfficers != null) {
      data['companyOfficers'] = this.companyOfficers!.map((v) => v.toJson()).toList();
    }
		data['auditRisk'] = this.auditRisk;
		data['boardRisk'] = this.boardRisk;
		data['compensationRisk'] = this.compensationRisk;
		data['shareHolderRightsRisk'] = this.shareHolderRightsRisk;
		data['overallRisk'] = this.overallRisk;
		data['governanceEpochDate'] = this.governanceEpochDate;
		data['compensationAsOfEpochDate'] = this.compensationAsOfEpochDate;
		data['maxAge'] = this.maxAge;
		return data;
	}
}

class CompanyOfficers {
	int? maxAge;
	String? name;
	int? age;
	String? title;
	int? yearBorn;
	int? fiscalYear;
	TotalPay? totalPay;
	ExercisedValue? exercisedValue;
	ExercisedValue? unexercisedValue;

	CompanyOfficers({this.maxAge, this.name, this.age, this.title, this.yearBorn, this.fiscalYear, this.totalPay, this.exercisedValue, this.unexercisedValue});

	CompanyOfficers.fromJson(Map<String, dynamic> json) {
		maxAge = json['maxAge'];
		name = json['name'];
		age = json['age'];
		title = json['title'];
		yearBorn = json['yearBorn'];
		fiscalYear = json['fiscalYear'];
		totalPay = json['totalPay'] != null ? new TotalPay.fromJson(json['totalPay']) : null;
		exercisedValue = json['exercisedValue'] != null ? new ExercisedValue.fromJson(json['exercisedValue']) : null;
		unexercisedValue = json['unexercisedValue'] != null ? new ExercisedValue.fromJson(json['unexercisedValue']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['maxAge'] = this.maxAge;
		data['name'] = this.name;
		data['age'] = this.age;
		data['title'] = this.title;
		data['yearBorn'] = this.yearBorn;
		data['fiscalYear'] = this.fiscalYear;
		if (this.totalPay != null) {
      data['totalPay'] = this.totalPay!.toJson();
    }
		if (this.exercisedValue != null) {
      data['exercisedValue'] = this.exercisedValue!.toJson();
    }
		if (this.unexercisedValue != null) {
      data['unexercisedValue'] = this.unexercisedValue!.toJson();
    }
		return data;
	}
}

class TotalPay {
	int? raw;
	String? fmt;
	String? longFmt;

	TotalPay({this.raw, this.fmt, this.longFmt});

	TotalPay.fromJson(Map<String, dynamic> json) {
		raw = json['raw'];
		fmt = json['fmt'];
		longFmt = json['longFmt'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['raw'] = this.raw;
		data['fmt'] = this.fmt;
		data['longFmt'] = this.longFmt;
		return data;
	}
}

class ExercisedValue {
	int? raw;
	Null fmt;
	String? longFmt;

	ExercisedValue({this.raw, this.fmt, this.longFmt});

	ExercisedValue.fromJson(Map<String, dynamic> json) {
		raw = json['raw'];
		fmt = json['fmt'];
		longFmt = json['longFmt'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['raw'] = this.raw;
		data['fmt'] = this.fmt;
		data['longFmt'] = this.longFmt;
		return data;
	}
}

class RecommendationTrend {
	List<RecommendationTrendTrend>? trend;
	int? maxAge;

	RecommendationTrend({this.trend, this.maxAge});

	RecommendationTrend.fromJson(Map<String, dynamic> json) {
		if (json['trend'] != null) {
			trend = [];
			json['trend'].forEach((v) { trend!.add(new RecommendationTrendTrend.fromJson(v)); });
		}
		maxAge = json['maxAge'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.trend != null) {
      data['trend'] = this.trend!.map((v) => v.toJson()).toList();
    }
		data['maxAge'] = this.maxAge;
		return data;
	}
}

class RecommendationTrendTrend {
	String? period;
	int? strongBuy;
	int? buy;
	int? hold;
	int? sell;
	int? strongSell;

	RecommendationTrendTrend({this.period, this.strongBuy, this.buy, this.hold, this.sell, this.strongSell});

	RecommendationTrendTrend.fromJson(Map<String, dynamic> json) {
		period = json['period'];
		strongBuy = json['strongBuy'];
		buy = json['buy'];
		hold = json['hold'];
		sell = json['sell'];
		strongSell = json['strongSell'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['period'] = this.period;
		data['strongBuy'] = this.strongBuy;
		data['buy'] = this.buy;
		data['hold'] = this.hold;
		data['sell'] = this.sell;
		data['strongSell'] = this.strongSell;
		return data;
	}
}

class CashflowStatementHistory {
	List<CashflowStatements>? cashflowStatements;
	int? maxAge;

	CashflowStatementHistory({this.cashflowStatements, this.maxAge});

	CashflowStatementHistory.fromJson(Map<String, dynamic> json) {
		if (json['cashflowStatements'] != null) {
			cashflowStatements = [];
			json['cashflowStatements'].forEach((v) { cashflowStatements!.add(new CashflowStatements.fromJson(v)); });
		}
		maxAge = json['maxAge'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.cashflowStatements != null) {
      data['cashflowStatements'] = this.cashflowStatements!.map((v) => v.toJson()).toList();
    }
		data['maxAge'] = this.maxAge;
		return data;
	}
}

class CashflowStatements {
	int? maxAge;
	RawFormatContainer? endDate;
	TotalPay? netIncome;
	TotalPay? depreciation;
	TotalPay? changeToNetincome;
	TotalPay? changeToAccountReceivables;
	TotalPay? changeToLiabilities;
	TotalPay? changeToInventory;
	TotalPay? changeToOperatingActivities;
	TotalPay? totalCashFromOperatingActivities;
	TotalPay? capitalExpenditures;
	TotalPay? investments;
	TotalPay? otherCashflowsFromInvestingActivities;
	TotalPay? totalCashflowsFromInvestingActivities;
	TotalPay? dividendsPaid;
	TotalPay? netBorrowings;
	TotalPay? otherCashflowsFromFinancingActivities;
	TotalPay? totalCashFromFinancingActivities;
	TotalPay? effectOfExchangeRate;
	TotalPay? changeInCash;
	TotalPay? repurchaseOfStock;
	TotalPay? issuanceOfStock;

	CashflowStatements({this.maxAge, this.endDate, this.netIncome, this.depreciation, this.changeToNetincome, this.changeToAccountReceivables, this.changeToLiabilities, this.changeToInventory, this.changeToOperatingActivities, this.totalCashFromOperatingActivities, this.capitalExpenditures, this.investments, this.otherCashflowsFromInvestingActivities, this.totalCashflowsFromInvestingActivities, this.dividendsPaid, this.netBorrowings, this.otherCashflowsFromFinancingActivities, this.totalCashFromFinancingActivities, this.effectOfExchangeRate, this.changeInCash, this.repurchaseOfStock, this.issuanceOfStock});

	CashflowStatements.fromJson(Map<String, dynamic> json) {
		maxAge = json['maxAge'];
		endDate = json['endDate'] != null ? new RawFormatContainer.fromJson(json['endDate']) : null;
		netIncome = json['netIncome'] != null ? new TotalPay.fromJson(json['netIncome']) : null;
		depreciation = json['depreciation'] != null ? new TotalPay.fromJson(json['depreciation']) : null;
		changeToNetincome = json['changeToNetincome'] != null ? new TotalPay.fromJson(json['changeToNetincome']) : null;
		changeToAccountReceivables = json['changeToAccountReceivables'] != null ? new TotalPay.fromJson(json['changeToAccountReceivables']) : null;
		changeToLiabilities = json['changeToLiabilities'] != null ? new TotalPay.fromJson(json['changeToLiabilities']) : null;
		changeToInventory = json['changeToInventory'] != null ? new TotalPay.fromJson(json['changeToInventory']) : null;
		changeToOperatingActivities = json['changeToOperatingActivities'] != null ? new TotalPay.fromJson(json['changeToOperatingActivities']) : null;
		totalCashFromOperatingActivities = json['totalCashFromOperatingActivities'] != null ? new TotalPay.fromJson(json['totalCashFromOperatingActivities']) : null;
		capitalExpenditures = json['capitalExpenditures'] != null ? new TotalPay.fromJson(json['capitalExpenditures']) : null;
		investments = json['investments'] != null ? new TotalPay.fromJson(json['investments']) : null;
		otherCashflowsFromInvestingActivities = json['otherCashflowsFromInvestingActivities'] != null ? new TotalPay.fromJson(json['otherCashflowsFromInvestingActivities']) : null;
		totalCashflowsFromInvestingActivities = json['totalCashflowsFromInvestingActivities'] != null ? new TotalPay.fromJson(json['totalCashflowsFromInvestingActivities']) : null;
		dividendsPaid = json['dividendsPaid'] != null ? new TotalPay.fromJson(json['dividendsPaid']) : null;
		netBorrowings = json['netBorrowings'] != null ? new TotalPay.fromJson(json['netBorrowings']) : null;
		otherCashflowsFromFinancingActivities = json['otherCashflowsFromFinancingActivities'] != null ? new TotalPay.fromJson(json['otherCashflowsFromFinancingActivities']) : null;
		totalCashFromFinancingActivities = json['totalCashFromFinancingActivities'] != null ? new TotalPay.fromJson(json['totalCashFromFinancingActivities']) : null;
		effectOfExchangeRate = json['effectOfExchangeRate'] != null ? new TotalPay.fromJson(json['effectOfExchangeRate']) : null;
		changeInCash = json['changeInCash'] != null ? new TotalPay.fromJson(json['changeInCash']) : null;
		repurchaseOfStock = json['repurchaseOfStock'] != null ? new TotalPay.fromJson(json['repurchaseOfStock']) : null;
		issuanceOfStock = json['issuanceOfStock'] != null ? new TotalPay.fromJson(json['issuanceOfStock']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['maxAge'] = this.maxAge;
		if (this.endDate != null) {
      data['endDate'] = this.endDate!.toJson();
    }
		if (this.netIncome != null) {
      data['netIncome'] = this.netIncome!.toJson();
    }
		if (this.depreciation != null) {
      data['depreciation'] = this.depreciation!.toJson();
    }
		if (this.changeToNetincome != null) {
      data['changeToNetincome'] = this.changeToNetincome!.toJson();
    }
		if (this.changeToAccountReceivables != null) {
      data['changeToAccountReceivables'] = this.changeToAccountReceivables!.toJson();
    }
		if (this.changeToLiabilities != null) {
      data['changeToLiabilities'] = this.changeToLiabilities!.toJson();
    }
		if (this.changeToInventory != null) {
      data['changeToInventory'] = this.changeToInventory!.toJson();
    }
		if (this.changeToOperatingActivities != null) {
      data['changeToOperatingActivities'] = this.changeToOperatingActivities!.toJson();
    }
		if (this.totalCashFromOperatingActivities != null) {
      data['totalCashFromOperatingActivities'] = this.totalCashFromOperatingActivities!.toJson();
    }
		if (this.capitalExpenditures != null) {
      data['capitalExpenditures'] = this.capitalExpenditures!.toJson();
    }
		if (this.investments != null) {
      data['investments'] = this.investments!.toJson();
    }
		if (this.otherCashflowsFromInvestingActivities != null) {
      data['otherCashflowsFromInvestingActivities'] = this.otherCashflowsFromInvestingActivities!.toJson();
    }
		if (this.totalCashflowsFromInvestingActivities != null) {
      data['totalCashflowsFromInvestingActivities'] = this.totalCashflowsFromInvestingActivities!.toJson();
    }
		if (this.dividendsPaid != null) {
      data['dividendsPaid'] = this.dividendsPaid!.toJson();
    }
		if (this.netBorrowings != null) {
      data['netBorrowings'] = this.netBorrowings!.toJson();
    }
		if (this.otherCashflowsFromFinancingActivities != null) {
      data['otherCashflowsFromFinancingActivities'] = this.otherCashflowsFromFinancingActivities!.toJson();
    }
		if (this.totalCashFromFinancingActivities != null) {
      data['totalCashFromFinancingActivities'] = this.totalCashFromFinancingActivities!.toJson();
    }
		if (this.effectOfExchangeRate != null) {
      data['effectOfExchangeRate'] = this.effectOfExchangeRate!.toJson();
    }
		if (this.changeInCash != null) {
      data['changeInCash'] = this.changeInCash!.toJson();
    }
		if (this.repurchaseOfStock != null) {
      data['repurchaseOfStock'] = this.repurchaseOfStock!.toJson();
    }
		if (this.issuanceOfStock != null) {
      data['issuanceOfStock'] = this.issuanceOfStock!.toJson();
    }
		return data;
	}
}

class IndexTrend {
	int? maxAge;
	String? symbol;
	RawFormatContainer? peRatio;
	RawFormatContainer? pegRatio;
	List<Estimates>? estimates;

	IndexTrend({this.maxAge, this.symbol, this.peRatio, this.pegRatio, this.estimates});

	IndexTrend.fromJson(Map<String, dynamic> json) {
		maxAge = json['maxAge'];
		symbol = json['symbol'];
		peRatio = json['peRatio'] != null ? new RawFormatContainer.fromJson(json['peRatio']) : null;
		pegRatio = json['pegRatio'] != null ? new RawFormatContainer.fromJson(json['pegRatio']) : null;
		if (json['estimates'] != null) {
			estimates = [];
			json['estimates'].forEach((v) { estimates!.add(new Estimates.fromJson(v)); });
		}
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['maxAge'] = this.maxAge;
		data['symbol'] = this.symbol;
		if (this.peRatio != null) {
      data['peRatio'] = this.peRatio!.toJson();
    }
		if (this.pegRatio != null) {
      data['pegRatio'] = this.pegRatio!.toJson();
    }
		if (this.estimates != null) {
      data['estimates'] = this.estimates!.map((v) => v.toJson()).toList();
    }
		return data;
	}
}

class RawFormatContainer {
	String? raw;
	String? fmt;
  String? longFmt;

	RawFormatContainer({this.raw, this.fmt, this.longFmt});

	RawFormatContainer.fromJson(Map<String, dynamic> json) {
		raw = json['raw'].toString();
		fmt = json['fmt'].toString();
    longFmt = json['longFmt'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['raw'] = this.raw;
		data['fmt'] = this.fmt;
    data['longFmt'] = this.longFmt;
		return data;
	}
}

class Estimates {
	String? period;
	RawFormatContainer? growth;

	Estimates({this.period, this.growth});

	Estimates.fromJson(Map<String, dynamic> json) {
		period = json['period'];
		growth = json['growth'] != null ? new RawFormatContainer.fromJson(json['growth']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['period'] = this.period;
		if (this.growth != null) {
      data['growth'] = this.growth!.toJson();
    }
		return data;
	}
}

class DefaultKeyStatistics {
	int? maxAge;
	TotalPay? priceHint;
	TotalPay? enterpriseValue;
	RawFormatContainer? forwardPE;
	RawFormatContainer? profitMargins;
	TotalPay? floatShares;
	TotalPay? sharesOutstanding;
	TotalPay? sharesShort;
	TotalPay? sharesShortPriorMonth;
	RawFormatContainer? sharesShortPreviousMonthDate;
	RawFormatContainer? dateShortInterest;
	RawFormatContainer? sharesPercentSharesOut;
	RawFormatContainer? heldPercentInsiders;
	RawFormatContainer? heldPercentInstitutions;
	RawFormatContainer? shortRatio;
	RawFormatContainer? shortPercentOfFloat;
	RawFormatContainer? beta;
	RawFormatContainer? impliedSharesOutstanding;
	RawFormatContainer? morningStarOverallRating;
	RawFormatContainer? morningStarRiskRating;
	Null category;
	RawFormatContainer? bookValue;
	RawFormatContainer? priceToBook;
	RawFormatContainer? annualReportExpenseRatio;
	RawFormatContainer? ytdReturn;
	RawFormatContainer? beta3Year;
	TotalPay? totalAssets;
	RawFormatContainer? yield;
	Null fundFamily;
	RawFormatContainer? fundInceptionDate;
	Null legalType;
	RawFormatContainer? threeYearAverageReturn;
	RawFormatContainer? fiveYearAverageReturn;
	RawFormatContainer? priceToSalesTrailing12Months;
	RawFormatContainer? lastFiscalYearEnd;
	RawFormatContainer? nextFiscalYearEnd;
	RawFormatContainer? mostRecentQuarter;
	RawFormatContainer? earningsQuarterlyGrowth;
	RawFormatContainer? revenueQuarterlyGrowth;
	TotalPay? netIncomeToCommon;
	RawFormatContainer? trailingEps;
	RawFormatContainer? forwardEps;
	RawFormatContainer? pegRatio;
	String? lastSplitFactor;
	RawFormatContainer? lastSplitDate;
	RawFormatContainer? enterpriseToRevenue;
	RawFormatContainer? enterpriseToEbitda;
	RawFormatContainer? i52WeekChange;
	RawFormatContainer? sandP52WeekChange;
	RawFormatContainer? lastDividendValue;
	RawFormatContainer? lastDividendDate;
	RawFormatContainer? lastCapGain;
	RawFormatContainer? annualHoldingsTurnover;

	DefaultKeyStatistics({this.maxAge, this.priceHint, this.enterpriseValue, this.forwardPE, this.profitMargins, this.floatShares, this.sharesOutstanding, this.sharesShort, this.sharesShortPriorMonth, this.sharesShortPreviousMonthDate, this.dateShortInterest, this.sharesPercentSharesOut, this.heldPercentInsiders, this.heldPercentInstitutions, this.shortRatio, this.shortPercentOfFloat, this.beta, this.impliedSharesOutstanding, this.morningStarOverallRating, this.morningStarRiskRating, this.category, this.bookValue, this.priceToBook, this.annualReportExpenseRatio, this.ytdReturn, this.beta3Year, this.totalAssets, this.yield, this.fundFamily, this.fundInceptionDate, this.legalType, this.threeYearAverageReturn, this.fiveYearAverageReturn, this.priceToSalesTrailing12Months, this.lastFiscalYearEnd, this.nextFiscalYearEnd, this.mostRecentQuarter, this.earningsQuarterlyGrowth, this.revenueQuarterlyGrowth, this.netIncomeToCommon, this.trailingEps, this.forwardEps, this.pegRatio, this.lastSplitFactor, this.lastSplitDate, this.enterpriseToRevenue, this.enterpriseToEbitda, this.i52WeekChange, this.sandP52WeekChange, this.lastDividendValue, this.lastDividendDate, this.lastCapGain, this.annualHoldingsTurnover});

	DefaultKeyStatistics.fromJson(Map<String, dynamic> json) {
		maxAge = json['maxAge'];
		priceHint = json['priceHint'] != null ? new TotalPay.fromJson(json['priceHint']) : null;
		enterpriseValue = json['enterpriseValue'] != null ? new TotalPay.fromJson(json['enterpriseValue']) : null;
		forwardPE = json['forwardPE'] != null ? new RawFormatContainer.fromJson(json['forwardPE']) : null;
		profitMargins = json['profitMargins'] != null ? new RawFormatContainer.fromJson(json['profitMargins']) : null;
		floatShares = json['floatShares'] != null ? new TotalPay.fromJson(json['floatShares']) : null;
		sharesOutstanding = json['sharesOutstanding'] != null ? new TotalPay.fromJson(json['sharesOutstanding']) : null;
		sharesShort = json['sharesShort'] != null ? new TotalPay.fromJson(json['sharesShort']) : null;
		sharesShortPriorMonth = json['sharesShortPriorMonth'] != null ? new TotalPay.fromJson(json['sharesShortPriorMonth']) : null;
		sharesShortPreviousMonthDate = json['sharesShortPreviousMonthDate'] != null ? new RawFormatContainer.fromJson(json['sharesShortPreviousMonthDate']) : null;
		dateShortInterest = json['dateShortInterest'] != null ? new RawFormatContainer.fromJson(json['dateShortInterest']) : null;
		sharesPercentSharesOut = json['sharesPercentSharesOut'] != null ? new RawFormatContainer.fromJson(json['sharesPercentSharesOut']) : null;
		heldPercentInsiders = json['heldPercentInsiders'] != null ? new RawFormatContainer.fromJson(json['heldPercentInsiders']) : null;
		heldPercentInstitutions = json['heldPercentInstitutions'] != null ? new RawFormatContainer.fromJson(json['heldPercentInstitutions']) : null;
		shortRatio = json['shortRatio'] != null ? new RawFormatContainer.fromJson(json['shortRatio']) : null;
		shortPercentOfFloat = json['shortPercentOfFloat'] != null ? new RawFormatContainer.fromJson(json['shortPercentOfFloat']) : null;
		beta = json['beta'] != null ? new RawFormatContainer.fromJson(json['beta']) : null;
		impliedSharesOutstanding = json['impliedSharesOutstanding'] != null ? new RawFormatContainer.fromJson(json['impliedSharesOutstanding']) : null;
		morningStarOverallRating = json['morningStarOverallRating'] != null ? new RawFormatContainer.fromJson(json['morningStarOverallRating']) : null;
		morningStarRiskRating = json['morningStarRiskRating'] != null ? new RawFormatContainer.fromJson(json['morningStarRiskRating']) : null;
		category = json['category'];
		bookValue = json['bookValue'] != null ? new RawFormatContainer.fromJson(json['bookValue']) : null;
		priceToBook = json['priceToBook'] != null ? new RawFormatContainer.fromJson(json['priceToBook']) : null;
		annualReportExpenseRatio = json['annualReportExpenseRatio'] != null ? new RawFormatContainer.fromJson(json['annualReportExpenseRatio']) : null;
		ytdReturn = json['ytdReturn'] != null ? new RawFormatContainer.fromJson(json['ytdReturn']) : null;
		beta3Year = json['beta3Year'] != null ? new RawFormatContainer.fromJson(json['beta3Year']) : null;
		totalAssets = json['totalAssets'] != null ? new TotalPay.fromJson(json['totalAssets']) : null;
		yield = json['yield'] != null ? new RawFormatContainer.fromJson(json['yield']) : null;
		fundFamily = json['fundFamily'];
		fundInceptionDate = json['fundInceptionDate'] != null ? new RawFormatContainer.fromJson(json['fundInceptionDate']) : null;
		legalType = json['legalType'];
		threeYearAverageReturn = json['threeYearAverageReturn'] != null ? new RawFormatContainer.fromJson(json['threeYearAverageReturn']) : null;
		fiveYearAverageReturn = json['fiveYearAverageReturn'] != null ? new RawFormatContainer.fromJson(json['fiveYearAverageReturn']) : null;
		priceToSalesTrailing12Months = json['priceToSalesTrailing12Months'] != null ? new RawFormatContainer.fromJson(json['priceToSalesTrailing12Months']) : null;
		lastFiscalYearEnd = json['lastFiscalYearEnd'] != null ? new RawFormatContainer.fromJson(json['lastFiscalYearEnd']) : null;
		nextFiscalYearEnd = json['nextFiscalYearEnd'] != null ? new RawFormatContainer.fromJson(json['nextFiscalYearEnd']) : null;
		mostRecentQuarter = json['mostRecentQuarter'] != null ? new RawFormatContainer.fromJson(json['mostRecentQuarter']) : null;
		earningsQuarterlyGrowth = json['earningsQuarterlyGrowth'] != null ? new RawFormatContainer.fromJson(json['earningsQuarterlyGrowth']) : null;
		revenueQuarterlyGrowth = json['revenueQuarterlyGrowth'] != null ? new RawFormatContainer.fromJson(json['revenueQuarterlyGrowth']) : null;
		netIncomeToCommon = json['netIncomeToCommon'] != null ? new TotalPay.fromJson(json['netIncomeToCommon']) : null;
		trailingEps = json['trailingEps'] != null ? new RawFormatContainer.fromJson(json['trailingEps']) : null;
		forwardEps = json['forwardEps'] != null ? new RawFormatContainer.fromJson(json['forwardEps']) : null;
		pegRatio = json['pegRatio'] != null ? new RawFormatContainer.fromJson(json['pegRatio']) : null;
		lastSplitFactor = json['lastSplitFactor'];
		lastSplitDate = json['lastSplitDate'] != null ? new RawFormatContainer.fromJson(json['lastSplitDate']) : null;
		enterpriseToRevenue = json['enterpriseToRevenue'] != null ? new RawFormatContainer.fromJson(json['enterpriseToRevenue']) : null;
		enterpriseToEbitda = json['enterpriseToEbitda'] != null ? new RawFormatContainer.fromJson(json['enterpriseToEbitda']) : null;
		i52WeekChange = json['52WeekChange'] != null ? new RawFormatContainer.fromJson(json['52WeekChange']) : null;
		sandP52WeekChange = json['SandP52WeekChange'] != null ? new RawFormatContainer.fromJson(json['SandP52WeekChange']) : null;
		lastDividendValue = json['lastDividendValue'] != null ? new RawFormatContainer.fromJson(json['lastDividendValue']) : null;
		lastDividendDate = json['lastDividendDate'] != null ? new RawFormatContainer.fromJson(json['lastDividendDate']) : null;
		lastCapGain = json['lastCapGain'] != null ? new RawFormatContainer.fromJson(json['lastCapGain']) : null;
		annualHoldingsTurnover = json['annualHoldingsTurnover'] != null ? new RawFormatContainer.fromJson(json['annualHoldingsTurnover']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['maxAge'] = this.maxAge;
		if (this.priceHint != null) {
      data['priceHint'] = this.priceHint!.toJson();
    }
		if (this.enterpriseValue != null) {
      data['enterpriseValue'] = this.enterpriseValue!.toJson();
    }
		if (this.forwardPE != null) {
      data['forwardPE'] = this.forwardPE!.toJson();
    }
		if (this.profitMargins != null) {
      data['profitMargins'] = this.profitMargins!.toJson();
    }
		if (this.floatShares != null) {
      data['floatShares'] = this.floatShares!.toJson();
    }
		if (this.sharesOutstanding != null) {
      data['sharesOutstanding'] = this.sharesOutstanding!.toJson();
    }
		if (this.sharesShort != null) {
      data['sharesShort'] = this.sharesShort!.toJson();
    }
		if (this.sharesShortPriorMonth != null) {
      data['sharesShortPriorMonth'] = this.sharesShortPriorMonth!.toJson();
    }
		if (this.sharesShortPreviousMonthDate != null) {
      data['sharesShortPreviousMonthDate'] = this.sharesShortPreviousMonthDate!.toJson();
    }
		if (this.dateShortInterest != null) {
      data['dateShortInterest'] = this.dateShortInterest!.toJson();
    }
		if (this.sharesPercentSharesOut != null) {
      data['sharesPercentSharesOut'] = this.sharesPercentSharesOut!.toJson();
    }
		if (this.heldPercentInsiders != null) {
      data['heldPercentInsiders'] = this.heldPercentInsiders!.toJson();
    }
		if (this.heldPercentInstitutions != null) {
      data['heldPercentInstitutions'] = this.heldPercentInstitutions!.toJson();
    }
		if (this.shortRatio != null) {
      data['shortRatio'] = this.shortRatio!.toJson();
    }
		if (this.shortPercentOfFloat != null) {
      data['shortPercentOfFloat'] = this.shortPercentOfFloat!.toJson();
    }
		if (this.beta != null) {
      data['beta'] = this.beta!.toJson();
    }
		if (this.impliedSharesOutstanding != null) {
      data['impliedSharesOutstanding'] = this.impliedSharesOutstanding!.toJson();
    }
		if (this.morningStarOverallRating != null) {
      data['morningStarOverallRating'] = this.morningStarOverallRating!.toJson();
    }
		if (this.morningStarRiskRating != null) {
      data['morningStarRiskRating'] = this.morningStarRiskRating!.toJson();
    }
		data['category'] = this.category;
		if (this.bookValue != null) {
      data['bookValue'] = this.bookValue!.toJson();
    }
		if (this.priceToBook != null) {
      data['priceToBook'] = this.priceToBook!.toJson();
    }
		if (this.annualReportExpenseRatio != null) {
      data['annualReportExpenseRatio'] = this.annualReportExpenseRatio!.toJson();
    }
		if (this.ytdReturn != null) {
      data['ytdReturn'] = this.ytdReturn!.toJson();
    }
		if (this.beta3Year != null) {
      data['beta3Year'] = this.beta3Year!.toJson();
    }
		if (this.totalAssets != null) {
      data['totalAssets'] = this.totalAssets!.toJson();
    }
		if (this.yield != null) {
      data['yield'] = this.yield!.toJson();
    }
		data['fundFamily'] = this.fundFamily;
		if (this.fundInceptionDate != null) {
      data['fundInceptionDate'] = this.fundInceptionDate!.toJson();
    }
		data['legalType'] = this.legalType;
		if (this.threeYearAverageReturn != null) {
      data['threeYearAverageReturn'] = this.threeYearAverageReturn!.toJson();
    }
		if (this.fiveYearAverageReturn != null) {
      data['fiveYearAverageReturn'] = this.fiveYearAverageReturn!.toJson();
    }
		if (this.priceToSalesTrailing12Months != null) {
      data['priceToSalesTrailing12Months'] = this.priceToSalesTrailing12Months!.toJson();
    }
		if (this.lastFiscalYearEnd != null) {
      data['lastFiscalYearEnd'] = this.lastFiscalYearEnd!.toJson();
    }
		if (this.nextFiscalYearEnd != null) {
      data['nextFiscalYearEnd'] = this.nextFiscalYearEnd!.toJson();
    }
		if (this.mostRecentQuarter != null) {
      data['mostRecentQuarter'] = this.mostRecentQuarter!.toJson();
    }
		if (this.earningsQuarterlyGrowth != null) {
      data['earningsQuarterlyGrowth'] = this.earningsQuarterlyGrowth!.toJson();
    }
		if (this.revenueQuarterlyGrowth != null) {
      data['revenueQuarterlyGrowth'] = this.revenueQuarterlyGrowth!.toJson();
    }
		if (this.netIncomeToCommon != null) {
      data['netIncomeToCommon'] = this.netIncomeToCommon!.toJson();
    }
		if (this.trailingEps != null) {
      data['trailingEps'] = this.trailingEps!.toJson();
    }
		if (this.forwardEps != null) {
      data['forwardEps'] = this.forwardEps!.toJson();
    }
		if (this.pegRatio != null) {
      data['pegRatio'] = this.pegRatio!.toJson();
    }
		data['lastSplitFactor'] = this.lastSplitFactor;
		if (this.lastSplitDate != null) {
      data['lastSplitDate'] = this.lastSplitDate!.toJson();
    }
		if (this.enterpriseToRevenue != null) {
      data['enterpriseToRevenue'] = this.enterpriseToRevenue!.toJson();
    }
		if (this.enterpriseToEbitda != null) {
      data['enterpriseToEbitda'] = this.enterpriseToEbitda!.toJson();
    }
		if (this.i52WeekChange != null) {
      data['52WeekChange'] = this.i52WeekChange!.toJson();
    }
		if (this.sandP52WeekChange != null) {
      data['SandP52WeekChange'] = this.sandP52WeekChange!.toJson();
    }
		if (this.lastDividendValue != null) {
      data['lastDividendValue'] = this.lastDividendValue!.toJson();
    }
		if (this.lastDividendDate != null) {
      data['lastDividendDate'] = this.lastDividendDate!.toJson();
    }
		if (this.lastCapGain != null) {
      data['lastCapGain'] = this.lastCapGain!.toJson();
    }
		if (this.annualHoldingsTurnover != null) {
      data['annualHoldingsTurnover'] = this.annualHoldingsTurnover!.toJson();
    }
		return data;
	}
}

class IndustryTrend {
	int? maxAge;
	Null symbol;
	RawFormatContainer? peRatio;
	RawFormatContainer? pegRatio;
	List<Estimates>? estimates;

	IndustryTrend({this.maxAge, this.symbol, this.peRatio, this.pegRatio, this.estimates});

	IndustryTrend.fromJson(Map<String, dynamic> json) {
		maxAge = json['maxAge'];
		symbol = json['symbol'];
		peRatio = json['peRatio'] != null ? new RawFormatContainer.fromJson(json['peRatio']) : null;
		pegRatio = json['pegRatio'] != null ? new RawFormatContainer.fromJson(json['pegRatio']) : null;
		if (json['estimates'] != null) {
			estimates = [];
			json['estimates'].forEach((v) { estimates!.add(new Estimates.fromJson(v)); });
		}
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['maxAge'] = this.maxAge;
		data['symbol'] = this.symbol;
		if (this.peRatio != null) {
      data['peRatio'] = this.peRatio!.toJson();
    }
		if (this.pegRatio != null) {
      data['pegRatio'] = this.pegRatio!.toJson();
    }
		if (this.estimates != null) {
      data['estimates'] = this.estimates!.map((v) => v.toJson()).toList();
    }
		return data;
	}
}

class QuoteType {
	String? exchange;
	String? quoteType;
	String? symbol;
	String? underlyingSymbol;
	String? shortName;
	String? longName;
	int? firstTradeDateEpochUtc;
	String? timeZoneFullName;
	String? timeZoneShortName;
	String? uuid;
	String? messageBoardId;
	int? gmtOffSetMilliseconds;
	int? maxAge;

	QuoteType({this.exchange, this.quoteType, this.symbol, this.underlyingSymbol, this.shortName, this.longName, this.firstTradeDateEpochUtc, this.timeZoneFullName, this.timeZoneShortName, this.uuid, this.messageBoardId, this.gmtOffSetMilliseconds, this.maxAge});

	QuoteType.fromJson(Map<String, dynamic> json) {
		exchange = json['exchange'];
		quoteType = json['quoteType'];
		symbol = json['symbol'];
		underlyingSymbol = json['underlyingSymbol'];
		shortName = json['shortName'];
		longName = json['longName'];
		firstTradeDateEpochUtc = json['firstTradeDateEpochUtc'];
		timeZoneFullName = json['timeZoneFullName'];
		timeZoneShortName = json['timeZoneShortName'];
		uuid = json['uuid'];
		messageBoardId = json['messageBoardId'];
		gmtOffSetMilliseconds = json['gmtOffSetMilliseconds'];
		maxAge = json['maxAge'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['exchange'] = this.exchange;
		data['quoteType'] = this.quoteType;
		data['symbol'] = this.symbol;
		data['underlyingSymbol'] = this.underlyingSymbol;
		data['shortName'] = this.shortName;
		data['longName'] = this.longName;
		data['firstTradeDateEpochUtc'] = this.firstTradeDateEpochUtc;
		data['timeZoneFullName'] = this.timeZoneFullName;
		data['timeZoneShortName'] = this.timeZoneShortName;
		data['uuid'] = this.uuid;
		data['messageBoardId'] = this.messageBoardId;
		data['gmtOffSetMilliseconds'] = this.gmtOffSetMilliseconds;
		data['maxAge'] = this.maxAge;
		return data;
	}
}

class IncomeStatementHistory {
	int? maxAge;
	RawFormatContainer? endDate;
	TotalPay? totalRevenue;
	TotalPay? costOfRevenue;
	TotalPay? grossProfit;
	TotalPay? researchDevelopment;
	TotalPay? sellingGeneralAdministrative;
	RawFormatContainer? nonRecurring;
	RawFormatContainer? otherOperatingExpenses;
	TotalPay? totalOperatingExpenses;
	TotalPay? operatingIncome;
	TotalPay? totalOtherIncomeExpenseNet;
	TotalPay? ebit;
	TotalPay? interestExpense;
	TotalPay? incomeBeforeTax;
	TotalPay? incomeTaxExpense;
	RawFormatContainer? minorityInterest;
	TotalPay? netIncomeFromContinuingOps;
	RawFormatContainer? discontinuedOperations;
	RawFormatContainer? extraordinaryItems;
	RawFormatContainer? effectOfAccountingCharges;
	RawFormatContainer? otherItems;
	TotalPay? netIncome;
	TotalPay? netIncomeApplicableToCommonShares;

	IncomeStatementHistory({this.maxAge, this.endDate, this.totalRevenue, this.costOfRevenue, this.grossProfit, this.researchDevelopment, this.sellingGeneralAdministrative, this.nonRecurring, this.otherOperatingExpenses, this.totalOperatingExpenses, this.operatingIncome, this.totalOtherIncomeExpenseNet, this.ebit, this.interestExpense, this.incomeBeforeTax, this.incomeTaxExpense, this.minorityInterest, this.netIncomeFromContinuingOps, this.discontinuedOperations, this.extraordinaryItems, this.effectOfAccountingCharges, this.otherItems, this.netIncome, this.netIncomeApplicableToCommonShares});

	IncomeStatementHistory.fromJson(Map<String, dynamic> json) {
		maxAge = json['maxAge'];
		endDate = json['endDate'] != null ? new RawFormatContainer.fromJson(json['endDate']) : null;
		totalRevenue = json['totalRevenue'] != null ? new TotalPay.fromJson(json['totalRevenue']) : null;
		costOfRevenue = json['costOfRevenue'] != null ? new TotalPay.fromJson(json['costOfRevenue']) : null;
		grossProfit = json['grossProfit'] != null ? new TotalPay.fromJson(json['grossProfit']) : null;
		researchDevelopment = json['researchDevelopment'] != null ? new TotalPay.fromJson(json['researchDevelopment']) : null;
		sellingGeneralAdministrative = json['sellingGeneralAdministrative'] != null ? new TotalPay.fromJson(json['sellingGeneralAdministrative']) : null;
		nonRecurring = json['nonRecurring'] != null ? new RawFormatContainer.fromJson(json['nonRecurring']) : null;
		otherOperatingExpenses = json['otherOperatingExpenses'] != null ? new RawFormatContainer.fromJson(json['otherOperatingExpenses']) : null;
		totalOperatingExpenses = json['totalOperatingExpenses'] != null ? new TotalPay.fromJson(json['totalOperatingExpenses']) : null;
		operatingIncome = json['operatingIncome'] != null ? new TotalPay.fromJson(json['operatingIncome']) : null;
		totalOtherIncomeExpenseNet = json['totalOtherIncomeExpenseNet'] != null ? new TotalPay.fromJson(json['totalOtherIncomeExpenseNet']) : null;
		ebit = json['ebit'] != null ? new TotalPay.fromJson(json['ebit']) : null;
		interestExpense = json['interestExpense'] != null ? new TotalPay.fromJson(json['interestExpense']) : null;
		incomeBeforeTax = json['incomeBeforeTax'] != null ? new TotalPay.fromJson(json['incomeBeforeTax']) : null;
		incomeTaxExpense = json['incomeTaxExpense'] != null ? new TotalPay.fromJson(json['incomeTaxExpense']) : null;
		minorityInterest = json['minorityInterest'] != null ? new RawFormatContainer.fromJson(json['minorityInterest']) : null;
		netIncomeFromContinuingOps = json['netIncomeFromContinuingOps'] != null ? new TotalPay.fromJson(json['netIncomeFromContinuingOps']) : null;
		discontinuedOperations = json['discontinuedOperations'] != null ? new RawFormatContainer.fromJson(json['discontinuedOperations']) : null;
		extraordinaryItems = json['extraordinaryItems'] != null ? new RawFormatContainer.fromJson(json['extraordinaryItems']) : null;
		effectOfAccountingCharges = json['effectOfAccountingCharges'] != null ? new RawFormatContainer.fromJson(json['effectOfAccountingCharges']) : null;
		otherItems = json['otherItems'] != null ? new RawFormatContainer.fromJson(json['otherItems']) : null;
		netIncome = json['netIncome'] != null ? new TotalPay.fromJson(json['netIncome']) : null;
		netIncomeApplicableToCommonShares = json['netIncomeApplicableToCommonShares'] != null ? new TotalPay.fromJson(json['netIncomeApplicableToCommonShares']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['maxAge'] = this.maxAge;
		if (this.endDate != null) {
      data['endDate'] = this.endDate!.toJson();
    }
		if (this.totalRevenue != null) {
      data['totalRevenue'] = this.totalRevenue!.toJson();
    }
		if (this.costOfRevenue != null) {
      data['costOfRevenue'] = this.costOfRevenue!.toJson();
    }
		if (this.grossProfit != null) {
      data['grossProfit'] = this.grossProfit!.toJson();
    }
		if (this.researchDevelopment != null) {
      data['researchDevelopment'] = this.researchDevelopment!.toJson();
    }
		if (this.sellingGeneralAdministrative != null) {
      data['sellingGeneralAdministrative'] = this.sellingGeneralAdministrative!.toJson();
    }
		if (this.nonRecurring != null) {
      data['nonRecurring'] = this.nonRecurring!.toJson();
    }
		if (this.otherOperatingExpenses != null) {
      data['otherOperatingExpenses'] = this.otherOperatingExpenses!.toJson();
    }
		if (this.totalOperatingExpenses != null) {
      data['totalOperatingExpenses'] = this.totalOperatingExpenses!.toJson();
    }
		if (this.operatingIncome != null) {
      data['operatingIncome'] = this.operatingIncome!.toJson();
    }
		if (this.totalOtherIncomeExpenseNet != null) {
      data['totalOtherIncomeExpenseNet'] = this.totalOtherIncomeExpenseNet!.toJson();
    }
		if (this.ebit != null) {
      data['ebit'] = this.ebit!.toJson();
    }
		if (this.interestExpense != null) {
      data['interestExpense'] = this.interestExpense!.toJson();
    }
		if (this.incomeBeforeTax != null) {
      data['incomeBeforeTax'] = this.incomeBeforeTax!.toJson();
    }
		if (this.incomeTaxExpense != null) {
      data['incomeTaxExpense'] = this.incomeTaxExpense!.toJson();
    }
		if (this.minorityInterest != null) {
      data['minorityInterest'] = this.minorityInterest!.toJson();
    }
		if (this.netIncomeFromContinuingOps != null) {
      data['netIncomeFromContinuingOps'] = this.netIncomeFromContinuingOps!.toJson();
    }
		if (this.discontinuedOperations != null) {
      data['discontinuedOperations'] = this.discontinuedOperations!.toJson();
    }
		if (this.extraordinaryItems != null) {
      data['extraordinaryItems'] = this.extraordinaryItems!.toJson();
    }
		if (this.effectOfAccountingCharges != null) {
      data['effectOfAccountingCharges'] = this.effectOfAccountingCharges!.toJson();
    }
		if (this.otherItems != null) {
      data['otherItems'] = this.otherItems!.toJson();
    }
		if (this.netIncome != null) {
      data['netIncome'] = this.netIncome!.toJson();
    }
		if (this.netIncomeApplicableToCommonShares != null) {
      data['netIncomeApplicableToCommonShares'] = this.netIncomeApplicableToCommonShares!.toJson();
    }
		return data;
	}
}

class FundOwnership {
	int? maxAge;
	List<OwnershipList>? ownershipList;

	FundOwnership({this.maxAge, this.ownershipList});

	FundOwnership.fromJson(Map<String, dynamic> json) {
		maxAge = json['maxAge'];
		if (json['ownershipList'] != null) {
			ownershipList = [];
			json['ownershipList'].forEach((v) { ownershipList!.add(new OwnershipList.fromJson(v)); });
		}
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['maxAge'] = this.maxAge;
		if (this.ownershipList != null) {
      data['ownershipList'] = this.ownershipList!.map((v) => v.toJson()).toList();
    }
		return data;
	}
}

class OwnershipList {
	int? maxAge;
	RawFormatContainer? reportDate;
	String? organization;
	RawFormatContainer? pctHeld;
	TotalPay? position;
	TotalPay? value;

	OwnershipList({this.maxAge, this.reportDate, this.organization, this.pctHeld, this.position, this.value});

	OwnershipList.fromJson(Map<String, dynamic> json) {
		maxAge = json['maxAge'];
		reportDate = json['reportDate'] != null ? new RawFormatContainer.fromJson(json['reportDate']) : null;
		organization = json['organization'];
		pctHeld = json['pctHeld'] != null ? new RawFormatContainer.fromJson(json['pctHeld']) : null;
		position = json['position'] != null ? new TotalPay.fromJson(json['position']) : null;
		value = json['value'] != null ? new TotalPay.fromJson(json['value']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['maxAge'] = this.maxAge;
		if (this.reportDate != null) {
      data['reportDate'] = this.reportDate!.toJson();
    }
		data['organization'] = this.organization;
		if (this.pctHeld != null) {
      data['pctHeld'] = this.pctHeld!.toJson();
    }
		if (this.position != null) {
      data['position'] = this.position!.toJson();
    }
		if (this.value != null) {
      data['value'] = this.value!.toJson();
    }
		return data;
	}
}

class SummaryDetail {
	int? maxAge;
	TotalPay? priceHint;
	RawFormatContainer? previousClose;
	RawFormatContainer? open;
	RawFormatContainer? dayLow;
	RawFormatContainer? dayHigh;
	RawFormatContainer? regularMarketPreviousClose;
	RawFormatContainer? regularMarketOpen;
	RawFormatContainer? regularMarketDayLow;
	RawFormatContainer? regularMarketDayHigh;
	RawFormatContainer? dividendRate;
	RawFormatContainer? dividendYield;
	RawFormatContainer? exDividendDate;
	RawFormatContainer? payoutRatio;
	RawFormatContainer? fiveYearAvgDividendYield;
	RawFormatContainer? beta;
	RawFormatContainer? trailingPE;
	RawFormatContainer? forwardPE;
	TotalPay? volume;
	TotalPay? regularMarketVolume;
	TotalPay? averageVolume;
	TotalPay? averageVolume10days;
	TotalPay? averageDailyVolume10Day;
	RawFormatContainer? bid;
	RawFormatContainer? ask;
	TotalPay? bidSize;
	TotalPay? askSize;
	TotalPay? marketCap;
	RawFormatContainer? yield;
	RawFormatContainer? ytdReturn;
	TotalPay? totalAssets;
	RawFormatContainer? expireDate;
	RawFormatContainer? strikePrice;
	RawFormatContainer? openInterest;
	RawFormatContainer? fiftyTwoWeekLow;
	RawFormatContainer? fiftyTwoWeekHigh;
	RawFormatContainer? priceToSalesTrailing12Months;
	RawFormatContainer? fiftyDayAverage;
	RawFormatContainer? twoHundredDayAverage;
	RawFormatContainer? trailingAnnualDividendRate;
	RawFormatContainer? trailingAnnualDividendYield;
	RawFormatContainer? navPrice;
	String? currency;
	Null fromCurrency;
	Null toCurrency;
	Null lastMarket;
	RawFormatContainer? volume24Hr;
	RawFormatContainer? volumeAllCurrencies;
	RawFormatContainer? circulatingSupply;
	Null algorithm;
	RawFormatContainer? maxSupply;
	RawFormatContainer? startDate;
	bool? tradeable;

	SummaryDetail({this.maxAge, this.priceHint, this.previousClose, this.open, this.dayLow, this.dayHigh, this.regularMarketPreviousClose, this.regularMarketOpen, this.regularMarketDayLow, this.regularMarketDayHigh, this.dividendRate, this.dividendYield, this.exDividendDate, this.payoutRatio, this.fiveYearAvgDividendYield, this.beta, this.trailingPE, this.forwardPE, this.volume, this.regularMarketVolume, this.averageVolume, this.averageVolume10days, this.averageDailyVolume10Day, this.bid, this.ask, this.bidSize, this.askSize, this.marketCap, this.yield, this.ytdReturn, this.totalAssets, this.expireDate, this.strikePrice, this.openInterest, this.fiftyTwoWeekLow, this.fiftyTwoWeekHigh, this.priceToSalesTrailing12Months, this.fiftyDayAverage, this.twoHundredDayAverage, this.trailingAnnualDividendRate, this.trailingAnnualDividendYield, this.navPrice, this.currency, this.fromCurrency, this.toCurrency, this.lastMarket, this.volume24Hr, this.volumeAllCurrencies, this.circulatingSupply, this.algorithm, this.maxSupply, this.startDate, this.tradeable});

	SummaryDetail.fromJson(Map<String, dynamic> json) {
		maxAge = json['maxAge'];
		priceHint = json['priceHint'] != null ? new TotalPay.fromJson(json['priceHint']) : null;
		previousClose = json['previousClose'] != null ? new RawFormatContainer.fromJson(json['previousClose']) : null;
		open = json['open'] != null ? new RawFormatContainer.fromJson(json['open']) : null;
		dayLow = json['dayLow'] != null ? new RawFormatContainer.fromJson(json['dayLow']) : null;
		dayHigh = json['dayHigh'] != null ? new RawFormatContainer.fromJson(json['dayHigh']) : null;
		regularMarketPreviousClose = json['regularMarketPreviousClose'] != null ? new RawFormatContainer.fromJson(json['regularMarketPreviousClose']) : null;
		regularMarketOpen = json['regularMarketOpen'] != null ? new RawFormatContainer.fromJson(json['regularMarketOpen']) : null;
		regularMarketDayLow = json['regularMarketDayLow'] != null ? new RawFormatContainer.fromJson(json['regularMarketDayLow']) : null;
		regularMarketDayHigh = json['regularMarketDayHigh'] != null ? new RawFormatContainer.fromJson(json['regularMarketDayHigh']) : null;
		dividendRate = json['dividendRate'] != null ? new RawFormatContainer.fromJson(json['dividendRate']) : null;
		dividendYield = json['dividendYield'] != null ? new RawFormatContainer.fromJson(json['dividendYield']) : null;
		exDividendDate = json['exDividendDate'] != null ? new RawFormatContainer.fromJson(json['exDividendDate']) : null;
		payoutRatio = json['payoutRatio'] != null ? new RawFormatContainer.fromJson(json['payoutRatio']) : null;
		fiveYearAvgDividendYield = json['fiveYearAvgDividendYield'] != null ? new RawFormatContainer.fromJson(json['fiveYearAvgDividendYield']) : null;
		beta = json['beta'] != null ? new RawFormatContainer.fromJson(json['beta']) : null;
		trailingPE = json['trailingPE'] != null ? new RawFormatContainer.fromJson(json['trailingPE']) : null;
		forwardPE = json['forwardPE'] != null ? new RawFormatContainer.fromJson(json['forwardPE']) : null;
		volume = json['volume'] != null ? new TotalPay.fromJson(json['volume']) : null;
		regularMarketVolume = json['regularMarketVolume'] != null ? new TotalPay.fromJson(json['regularMarketVolume']) : null;
		averageVolume = json['averageVolume'] != null ? new TotalPay.fromJson(json['averageVolume']) : null;
		averageVolume10days = json['averageVolume10days'] != null ? new TotalPay.fromJson(json['averageVolume10days']) : null;
		averageDailyVolume10Day = json['averageDailyVolume10Day'] != null ? new TotalPay.fromJson(json['averageDailyVolume10Day']) : null;
		bid = json['bid'] != null ? new RawFormatContainer.fromJson(json['bid']) : null;
		ask = json['ask'] != null ? new RawFormatContainer.fromJson(json['ask']) : null;
		bidSize = json['bidSize'] != null ? new TotalPay.fromJson(json['bidSize']) : null;
		askSize = json['askSize'] != null ? new TotalPay.fromJson(json['askSize']) : null;
		marketCap = json['marketCap'] != null ? new TotalPay.fromJson(json['marketCap']) : null;
		yield = json['yield'] != null ? new RawFormatContainer.fromJson(json['yield']) : null;
		ytdReturn = json['ytdReturn'] != null ? new RawFormatContainer.fromJson(json['ytdReturn']) : null;
		totalAssets = json['totalAssets'] != null ? new TotalPay.fromJson(json['totalAssets']) : null;
		expireDate = json['expireDate'] != null ? new RawFormatContainer.fromJson(json['expireDate']) : null;
		strikePrice = json['strikePrice'] != null ? new RawFormatContainer.fromJson(json['strikePrice']) : null;
		openInterest = json['openInterest'] != null ? new RawFormatContainer.fromJson(json['openInterest']) : null;
		fiftyTwoWeekLow = json['fiftyTwoWeekLow'] != null ? new RawFormatContainer.fromJson(json['fiftyTwoWeekLow']) : null;
		fiftyTwoWeekHigh = json['fiftyTwoWeekHigh'] != null ? new RawFormatContainer.fromJson(json['fiftyTwoWeekHigh']) : null;
		priceToSalesTrailing12Months = json['priceToSalesTrailing12Months'] != null ? new RawFormatContainer.fromJson(json['priceToSalesTrailing12Months']) : null;
		fiftyDayAverage = json['fiftyDayAverage'] != null ? new RawFormatContainer.fromJson(json['fiftyDayAverage']) : null;
		twoHundredDayAverage = json['twoHundredDayAverage'] != null ? new RawFormatContainer.fromJson(json['twoHundredDayAverage']) : null;
		trailingAnnualDividendRate = json['trailingAnnualDividendRate'] != null ? new RawFormatContainer.fromJson(json['trailingAnnualDividendRate']) : null;
		trailingAnnualDividendYield = json['trailingAnnualDividendYield'] != null ? new RawFormatContainer.fromJson(json['trailingAnnualDividendYield']) : null;
		navPrice = json['navPrice'] != null ? new RawFormatContainer.fromJson(json['navPrice']) : null;
		currency = json['currency'];
		fromCurrency = json['fromCurrency'];
		toCurrency = json['toCurrency'];
		lastMarket = json['lastMarket'];
		volume24Hr = json['volume24Hr'] != null ? new RawFormatContainer.fromJson(json['volume24Hr']) : null;
		volumeAllCurrencies = json['volumeAllCurrencies'] != null ? new RawFormatContainer.fromJson(json['volumeAllCurrencies']) : null;
		circulatingSupply = json['circulatingSupply'] != null ? new RawFormatContainer.fromJson(json['circulatingSupply']) : null;
		algorithm = json['algorithm'];
		maxSupply = json['maxSupply'] != null ? new RawFormatContainer.fromJson(json['maxSupply']) : null;
		startDate = json['startDate'] != null ? new RawFormatContainer.fromJson(json['startDate']) : null;
		tradeable = json['tradeable'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['maxAge'] = this.maxAge;
		if (this.priceHint != null) {
      data['priceHint'] = this.priceHint!.toJson();
    }
		if (this.previousClose != null) {
      data['previousClose'] = this.previousClose!.toJson();
    }
		if (this.open != null) {
      data['open'] = this.open!.toJson();
    }
		if (this.dayLow != null) {
      data['dayLow'] = this.dayLow!.toJson();
    }
		if (this.dayHigh != null) {
      data['dayHigh'] = this.dayHigh!.toJson();
    }
		if (this.regularMarketPreviousClose != null) {
      data['regularMarketPreviousClose'] = this.regularMarketPreviousClose!.toJson();
    }
		if (this.regularMarketOpen != null) {
      data['regularMarketOpen'] = this.regularMarketOpen!.toJson();
    }
		if (this.regularMarketDayLow != null) {
      data['regularMarketDayLow'] = this.regularMarketDayLow!.toJson();
    }
		if (this.regularMarketDayHigh != null) {
      data['regularMarketDayHigh'] = this.regularMarketDayHigh!.toJson();
    }
		if (this.dividendRate != null) {
      data['dividendRate'] = this.dividendRate!.toJson();
    }
		if (this.dividendYield != null) {
      data['dividendYield'] = this.dividendYield!.toJson();
    }
		if (this.exDividendDate != null) {
      data['exDividendDate'] = this.exDividendDate!.toJson();
    }
		if (this.payoutRatio != null) {
      data['payoutRatio'] = this.payoutRatio!.toJson();
    }
		if (this.fiveYearAvgDividendYield != null) {
      data['fiveYearAvgDividendYield'] = this.fiveYearAvgDividendYield!.toJson();
    }
		if (this.beta != null) {
      data['beta'] = this.beta!.toJson();
    }
		if (this.trailingPE != null) {
      data['trailingPE'] = this.trailingPE!.toJson();
    }
		if (this.forwardPE != null) {
      data['forwardPE'] = this.forwardPE!.toJson();
    }
		if (this.volume != null) {
      data['volume'] = this.volume!.toJson();
    }
		if (this.regularMarketVolume != null) {
      data['regularMarketVolume'] = this.regularMarketVolume!.toJson();
    }
		if (this.averageVolume != null) {
      data['averageVolume'] = this.averageVolume!.toJson();
    }
		if (this.averageVolume10days != null) {
      data['averageVolume10days'] = this.averageVolume10days!.toJson();
    }
		if (this.averageDailyVolume10Day != null) {
      data['averageDailyVolume10Day'] = this.averageDailyVolume10Day!.toJson();
    }
		if (this.bid != null) {
      data['bid'] = this.bid!.toJson();
    }
		if (this.ask != null) {
      data['ask'] = this.ask!.toJson();
    }
		if (this.bidSize != null) {
      data['bidSize'] = this.bidSize!.toJson();
    }
		if (this.askSize != null) {
      data['askSize'] = this.askSize!.toJson();
    }
		if (this.marketCap != null) {
      data['marketCap'] = this.marketCap!.toJson();
    }
		if (this.yield != null) {
      data['yield'] = this.yield!.toJson();
    }
		if (this.ytdReturn != null) {
      data['ytdReturn'] = this.ytdReturn!.toJson();
    }
		if (this.totalAssets != null) {
      data['totalAssets'] = this.totalAssets!.toJson();
    }
		if (this.expireDate != null) {
      data['expireDate'] = this.expireDate!.toJson();
    }
		if (this.strikePrice != null) {
      data['strikePrice'] = this.strikePrice!.toJson();
    }
		if (this.openInterest != null) {
      data['openInterest'] = this.openInterest!.toJson();
    }
		if (this.fiftyTwoWeekLow != null) {
      data['fiftyTwoWeekLow'] = this.fiftyTwoWeekLow!.toJson();
    }
		if (this.fiftyTwoWeekHigh != null) {
      data['fiftyTwoWeekHigh'] = this.fiftyTwoWeekHigh!.toJson();
    }
		if (this.priceToSalesTrailing12Months != null) {
      data['priceToSalesTrailing12Months'] = this.priceToSalesTrailing12Months!.toJson();
    }
		if (this.fiftyDayAverage != null) {
      data['fiftyDayAverage'] = this.fiftyDayAverage!.toJson();
    }
		if (this.twoHundredDayAverage != null) {
      data['twoHundredDayAverage'] = this.twoHundredDayAverage!.toJson();
    }
		if (this.trailingAnnualDividendRate != null) {
      data['trailingAnnualDividendRate'] = this.trailingAnnualDividendRate!.toJson();
    }
		if (this.trailingAnnualDividendYield != null) {
      data['trailingAnnualDividendYield'] = this.trailingAnnualDividendYield!.toJson();
    }
		if (this.navPrice != null) {
      data['navPrice'] = this.navPrice!.toJson();
    }
		data['currency'] = this.currency;
		data['fromCurrency'] = this.fromCurrency;
		data['toCurrency'] = this.toCurrency;
		data['lastMarket'] = this.lastMarket;
		if (this.volume24Hr != null) {
      data['volume24Hr'] = this.volume24Hr!.toJson();
    }
		if (this.volumeAllCurrencies != null) {
      data['volumeAllCurrencies'] = this.volumeAllCurrencies!.toJson();
    }
		if (this.circulatingSupply != null) {
      data['circulatingSupply'] = this.circulatingSupply!.toJson();
    }
		data['algorithm'] = this.algorithm;
		if (this.maxSupply != null) {
      data['maxSupply'] = this.maxSupply!.toJson();
    }
		if (this.startDate != null) {
      data['startDate'] = this.startDate!.toJson();
    }
		data['tradeable'] = this.tradeable;
		return data;
	}
}

class InsiderHolders {
	List<Holders>? holders;
	int? maxAge;

	InsiderHolders({this.holders, this.maxAge});

	InsiderHolders.fromJson(Map<String, dynamic> json) {
		if (json['holders'] != null) {
			holders = [];
			json['holders'].forEach((v) { holders!.add(new Holders.fromJson(v)); });
		}
		maxAge = json['maxAge'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.holders != null) {
      data['holders'] = this.holders!.map((v) => v.toJson()).toList();
    }
		data['maxAge'] = this.maxAge;
		return data;
	}
}

class Holders {
	int? maxAge;
	String? name;
	String? relation;
	String? url;
	String? transactionDescription;
	RawFormatContainer? latestTransDate;
	TotalPay? positionDirect;
	RawFormatContainer? positionDirectDate;

	Holders({this.maxAge, this.name, this.relation, this.url, this.transactionDescription, this.latestTransDate, this.positionDirect, this.positionDirectDate});

	Holders.fromJson(Map<String, dynamic> json) {
		maxAge = json['maxAge'];
		name = json['name'];
		relation = json['relation'];
		url = json['url'];
		transactionDescription = json['transactionDescription'];
		latestTransDate = json['latestTransDate'] != null ? new RawFormatContainer.fromJson(json['latestTransDate']) : null;
		positionDirect = json['positionDirect'] != null ? new TotalPay.fromJson(json['positionDirect']) : null;
		positionDirectDate = json['positionDirectDate'] != null ? new RawFormatContainer.fromJson(json['positionDirectDate']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['maxAge'] = this.maxAge;
		data['name'] = this.name;
		data['relation'] = this.relation;
		data['url'] = this.url;
		data['transactionDescription'] = this.transactionDescription;
		if (this.latestTransDate != null) {
      data['latestTransDate'] = this.latestTransDate!.toJson();
    }
		if (this.positionDirect != null) {
      data['positionDirect'] = this.positionDirect!.toJson();
    }
		if (this.positionDirectDate != null) {
      data['positionDirectDate'] = this.positionDirectDate!.toJson();
    }
		return data;
	}
}

class CalendarEvents {
	int? maxAge;
	CalendarEventsEarnings? earnings;
	RawFormatContainer? exDividendDate;
	RawFormatContainer? dividendDate;

	CalendarEvents({this.maxAge, this.earnings, this.exDividendDate, this.dividendDate});

	CalendarEvents.fromJson(Map<String, dynamic> json) {
		maxAge = json['maxAge'];
		earnings = json['earnings'] != null ? new CalendarEventsEarnings.fromJson(json['earnings']) : null;
		exDividendDate = json['exDividendDate'] != null ? new RawFormatContainer.fromJson(json['exDividendDate']) : null;
		dividendDate = json['dividendDate'] != null ? new RawFormatContainer.fromJson(json['dividendDate']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['maxAge'] = this.maxAge;
		if (this.earnings != null) {
      data['earnings'] = this.earnings!.toJson();
    }
		if (this.exDividendDate != null) {
      data['exDividendDate'] = this.exDividendDate!.toJson();
    }
		if (this.dividendDate != null) {
      data['dividendDate'] = this.dividendDate!.toJson();
    }
		return data;
	}
}

class CalendarEventsEarnings {
	List<RawFormatContainer>? earningsDate;
	RawFormatContainer? earningsAverage;
	RawFormatContainer? earningsLow;
	RawFormatContainer? earningsHigh;
	TotalPay? revenueAverage;
	TotalPay? revenueLow;
	TotalPay? revenueHigh;

	CalendarEventsEarnings({this.earningsDate, this.earningsAverage, this.earningsLow, this.earningsHigh, this.revenueAverage, this.revenueLow, this.revenueHigh});

	CalendarEventsEarnings.fromJson(Map<String, dynamic> json) {
		if (json['earningsDate'] != null) {
			earningsDate = [];
			json['earningsDate'].forEach((v) { earningsDate!.add(new RawFormatContainer.fromJson(v)); });
		}
		earningsAverage = json['earningsAverage'] != null ? new RawFormatContainer.fromJson(json['earningsAverage']) : null;
		earningsLow = json['earningsLow'] != null ? new RawFormatContainer.fromJson(json['earningsLow']) : null;
		earningsHigh = json['earningsHigh'] != null ? new RawFormatContainer.fromJson(json['earningsHigh']) : null;
		revenueAverage = json['revenueAverage'] != null ? new TotalPay.fromJson(json['revenueAverage']) : null;
		revenueLow = json['revenueLow'] != null ? new TotalPay.fromJson(json['revenueLow']) : null;
		revenueHigh = json['revenueHigh'] != null ? new TotalPay.fromJson(json['revenueHigh']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.earningsDate != null) {
      data['earningsDate'] = this.earningsDate!.map((v) => v.toJson()).toList();
    }
		if (this.earningsAverage != null) {
      data['earningsAverage'] = this.earningsAverage!.toJson();
    }
		if (this.earningsLow != null) {
      data['earningsLow'] = this.earningsLow!.toJson();
    }
		if (this.earningsHigh != null) {
      data['earningsHigh'] = this.earningsHigh!.toJson();
    }
		if (this.revenueAverage != null) {
      data['revenueAverage'] = this.revenueAverage!.toJson();
    }
		if (this.revenueLow != null) {
      data['revenueLow'] = this.revenueLow!.toJson();
    }
		if (this.revenueHigh != null) {
      data['revenueHigh'] = this.revenueHigh!.toJson();
    }
		return data;
	}
}

class UpgradeDowngradeHistory {
	List<UpgradeDownGradeHistoryItem>? history;
	int? maxAge;

	UpgradeDowngradeHistory({this.history, this.maxAge});

	UpgradeDowngradeHistory.fromJson(Map<String, dynamic> json) {
		if (json['history'] != null) {
			history = [];
			json['history'].forEach((v) { history!.add(new UpgradeDownGradeHistoryItem.fromJson(v)); });
		}
		maxAge = json['maxAge'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.history != null) {
      data['history'] = this.history!.map((v) => v.toJson()).toList();
    }
		data['maxAge'] = this.maxAge;
		return data;
	}
}

class UpgradeDownGradeHistoryItem {
	int? epochGradeDate;
	String? firm;
	String? toGrade;
	String? fromGrade;
	String? action;

	UpgradeDownGradeHistoryItem({this.epochGradeDate, this.firm, this.toGrade, this.fromGrade, this.action});

	UpgradeDownGradeHistoryItem.fromJson(Map<String, dynamic> json) {
		epochGradeDate = json['epochGradeDate'];
		firm = json['firm'];
		toGrade = json['toGrade'];
		fromGrade = json['fromGrade'];
		action = json['action'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['epochGradeDate'] = this.epochGradeDate;
		data['firm'] = this.firm;
		data['toGrade'] = this.toGrade;
		data['fromGrade'] = this.fromGrade;
		data['action'] = this.action;
		return data;
	}
}

class Price {
	int? maxAge;
	RawFormatContainer? preMarketChangePercent;
	RawFormatContainer? preMarketChange;
	int? preMarketTime;
	RawFormatContainer? preMarketPrice;
	String? preMarketSource;
	RawFormatContainer? postMarketChange;
	RawFormatContainer? postMarketPrice;
	RawFormatContainer? regularMarketChangePercent;
	RawFormatContainer? regularMarketChange;
	int? regularMarketTime;
	TotalPay? priceHint;
	RawFormatContainer? regularMarketPrice;
	RawFormatContainer? regularMarketDayHigh;
	RawFormatContainer? regularMarketDayLow;
	TotalPay? regularMarketVolume;
	TotalPay? averageDailyVolume10Day;
	TotalPay? averageDailyVolume3Month;
	RawFormatContainer? regularMarketPreviousClose;
	String? regularMarketSource;
	RawFormatContainer? regularMarketOpen;
	RawFormatContainer? strikePrice;
	RawFormatContainer? openInterest;
	String? exchange;
	String? exchangeName;
	int? exchangeDataDelayedBy;
	String? marketState;
	String? quoteType;
	String? symbol;
	Null underlyingSymbol;
	String? shortName;
	String? longName;
	String? currency;
	String? quoteSourceName;
	String? currencySymbol;
	Null fromCurrency;
	Null toCurrency;
	Null lastMarket;
	RawFormatContainer? volume24Hr;
	RawFormatContainer? volumeAllCurrencies;
	RawFormatContainer? circulatingSupply;
	TotalPay? marketCap;

	Price({this.maxAge, this.preMarketChangePercent, this.preMarketChange, this.preMarketTime, this.preMarketPrice, this.preMarketSource, this.postMarketChange, this.postMarketPrice, this.regularMarketChangePercent, this.regularMarketChange, this.regularMarketTime, this.priceHint, this.regularMarketPrice, this.regularMarketDayHigh, this.regularMarketDayLow, this.regularMarketVolume, this.averageDailyVolume10Day, this.averageDailyVolume3Month, this.regularMarketPreviousClose, this.regularMarketSource, this.regularMarketOpen, this.strikePrice, this.openInterest, this.exchange, this.exchangeName, this.exchangeDataDelayedBy, this.marketState, this.quoteType, this.symbol, this.underlyingSymbol, this.shortName, this.longName, this.currency, this.quoteSourceName, this.currencySymbol, this.fromCurrency, this.toCurrency, this.lastMarket, this.volume24Hr, this.volumeAllCurrencies, this.circulatingSupply, this.marketCap});

	Price.fromJson(Map<String, dynamic> json) {
		maxAge = json['maxAge'];
		preMarketChangePercent = json['preMarketChangePercent'] != null ? new RawFormatContainer.fromJson(json['preMarketChangePercent']) : null;
		preMarketChange = json['preMarketChange'] != null ? new RawFormatContainer.fromJson(json['preMarketChange']) : null;
		preMarketTime = json['preMarketTime'];
		preMarketPrice = json['preMarketPrice'] != null ? new RawFormatContainer.fromJson(json['preMarketPrice']) : null;
		preMarketSource = json['preMarketSource'];
		postMarketChange = json['postMarketChange'] != null ? new RawFormatContainer.fromJson(json['postMarketChange']) : null;
		postMarketPrice = json['postMarketPrice'] != null ? new RawFormatContainer.fromJson(json['postMarketPrice']) : null;
		regularMarketChangePercent = json['regularMarketChangePercent'] != null ? new RawFormatContainer.fromJson(json['regularMarketChangePercent']) : null;
		regularMarketChange = json['regularMarketChange'] != null ? new RawFormatContainer.fromJson(json['regularMarketChange']) : null;
		regularMarketTime = json['regularMarketTime'];
		priceHint = json['priceHint'] != null ? new TotalPay.fromJson(json['priceHint']) : null;
		regularMarketPrice = json['regularMarketPrice'] != null ? new RawFormatContainer.fromJson(json['regularMarketPrice']) : null;
		regularMarketDayHigh = json['regularMarketDayHigh'] != null ? new RawFormatContainer.fromJson(json['regularMarketDayHigh']) : null;
		regularMarketDayLow = json['regularMarketDayLow'] != null ? new RawFormatContainer.fromJson(json['regularMarketDayLow']) : null;
		regularMarketVolume = json['regularMarketVolume'] != null ? new TotalPay.fromJson(json['regularMarketVolume']) : null;
		averageDailyVolume10Day = json['averageDailyVolume10Day'] != null ? new TotalPay.fromJson(json['averageDailyVolume10Day']) : null;
		averageDailyVolume3Month = json['averageDailyVolume3Month'] != null ? new TotalPay.fromJson(json['averageDailyVolume3Month']) : null;
		regularMarketPreviousClose = json['regularMarketPreviousClose'] != null ? new RawFormatContainer.fromJson(json['regularMarketPreviousClose']) : null;
		regularMarketSource = json['regularMarketSource'];
		regularMarketOpen = json['regularMarketOpen'] != null ? new RawFormatContainer.fromJson(json['regularMarketOpen']) : null;
		strikePrice = json['strikePrice'] != null ? new RawFormatContainer.fromJson(json['strikePrice']) : null;
		openInterest = json['openInterest'] != null ? new RawFormatContainer.fromJson(json['openInterest']) : null;
		exchange = json['exchange'];
		exchangeName = json['exchangeName'];
		exchangeDataDelayedBy = json['exchangeDataDelayedBy'];
		marketState = json['marketState'];
		quoteType = json['quoteType'];
		symbol = json['symbol'];
		underlyingSymbol = json['underlyingSymbol'];
		shortName = json['shortName'];
		longName = json['longName'];
		currency = json['currency'];
		quoteSourceName = json['quoteSourceName'];
		currencySymbol = json['currencySymbol'];
		fromCurrency = json['fromCurrency'];
		toCurrency = json['toCurrency'];
		lastMarket = json['lastMarket'];
		volume24Hr = json['volume24Hr'] != null ? new RawFormatContainer.fromJson(json['volume24Hr']) : null;
		volumeAllCurrencies = json['volumeAllCurrencies'] != null ? new RawFormatContainer.fromJson(json['volumeAllCurrencies']) : null;
		circulatingSupply = json['circulatingSupply'] != null ? new RawFormatContainer.fromJson(json['circulatingSupply']) : null;
		marketCap = json['marketCap'] != null ? new TotalPay.fromJson(json['marketCap']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['maxAge'] = this.maxAge;
		if (this.preMarketChangePercent != null) {
      data['preMarketChangePercent'] = this.preMarketChangePercent!.toJson();
    }
		if (this.preMarketChange != null) {
      data['preMarketChange'] = this.preMarketChange!.toJson();
    }
		data['preMarketTime'] = this.preMarketTime;
		if (this.preMarketPrice != null) {
      data['preMarketPrice'] = this.preMarketPrice!.toJson();
    }
		data['preMarketSource'] = this.preMarketSource;
		if (this.postMarketChange != null) {
      data['postMarketChange'] = this.postMarketChange!.toJson();
    }
		if (this.postMarketPrice != null) {
      data['postMarketPrice'] = this.postMarketPrice!.toJson();
    }
		if (this.regularMarketChangePercent != null) {
      data['regularMarketChangePercent'] = this.regularMarketChangePercent!.toJson();
    }
		if (this.regularMarketChange != null) {
      data['regularMarketChange'] = this.regularMarketChange!.toJson();
    }
		data['regularMarketTime'] = this.regularMarketTime;
		if (this.priceHint != null) {
      data['priceHint'] = this.priceHint!.toJson();
    }
		if (this.regularMarketPrice != null) {
      data['regularMarketPrice'] = this.regularMarketPrice!.toJson();
    }
		if (this.regularMarketDayHigh != null) {
      data['regularMarketDayHigh'] = this.regularMarketDayHigh!.toJson();
    }
		if (this.regularMarketDayLow != null) {
      data['regularMarketDayLow'] = this.regularMarketDayLow!.toJson();
    }
		if (this.regularMarketVolume != null) {
      data['regularMarketVolume'] = this.regularMarketVolume!.toJson();
    }
		if (this.averageDailyVolume10Day != null) {
      data['averageDailyVolume10Day'] = this.averageDailyVolume10Day!.toJson();
    }
		if (this.averageDailyVolume3Month != null) {
      data['averageDailyVolume3Month'] = this.averageDailyVolume3Month!.toJson();
    }
		if (this.regularMarketPreviousClose != null) {
      data['regularMarketPreviousClose'] = this.regularMarketPreviousClose!.toJson();
    }
		data['regularMarketSource'] = this.regularMarketSource;
		if (this.regularMarketOpen != null) {
      data['regularMarketOpen'] = this.regularMarketOpen!.toJson();
    }
		if (this.strikePrice != null) {
      data['strikePrice'] = this.strikePrice!.toJson();
    }
		if (this.openInterest != null) {
      data['openInterest'] = this.openInterest!.toJson();
    }
		data['exchange'] = this.exchange;
		data['exchangeName'] = this.exchangeName;
		data['exchangeDataDelayedBy'] = this.exchangeDataDelayedBy;
		data['marketState'] = this.marketState;
		data['quoteType'] = this.quoteType;
		data['symbol'] = this.symbol;
		data['underlyingSymbol'] = this.underlyingSymbol;
		data['shortName'] = this.shortName;
		data['longName'] = this.longName;
		data['currency'] = this.currency;
		data['quoteSourceName'] = this.quoteSourceName;
		data['currencySymbol'] = this.currencySymbol;
		data['fromCurrency'] = this.fromCurrency;
		data['toCurrency'] = this.toCurrency;
		data['lastMarket'] = this.lastMarket;
		if (this.volume24Hr != null) {
      data['volume24Hr'] = this.volume24Hr!.toJson();
    }
		if (this.volumeAllCurrencies != null) {
      data['volumeAllCurrencies'] = this.volumeAllCurrencies!.toJson();
    }
		if (this.circulatingSupply != null) {
      data['circulatingSupply'] = this.circulatingSupply!.toJson();
    }
		if (this.marketCap != null) {
      data['marketCap'] = this.marketCap!.toJson();
    }
		return data;
	}
}

class BalanceSheetHistory {
	List<BalanceSheetStatements>? balanceSheetStatements;
	int? maxAge;

	BalanceSheetHistory({this.balanceSheetStatements, this.maxAge});

	BalanceSheetHistory.fromJson(Map<String, dynamic> json) {
		if (json['balanceSheetStatements'] != null) {
			balanceSheetStatements = [];
			json['balanceSheetStatements'].forEach((v) { balanceSheetStatements!.add(new BalanceSheetStatements.fromJson(v)); });
		}
		maxAge = json['maxAge'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.balanceSheetStatements != null) {
      data['balanceSheetStatements'] = this.balanceSheetStatements!.map((v) => v.toJson()).toList();
    }
		data['maxAge'] = this.maxAge;
		return data;
	}
}

class BalanceSheetStatements {
	int? maxAge;
	RawFormatContainer? endDate;
	TotalPay? cash;
	TotalPay? shortTermInvestments;
	TotalPay? netReceivables;
	TotalPay? inventory;
	TotalPay? otherCurrentAssets;
	TotalPay? totalCurrentAssets;
	TotalPay? longTermInvestments;
	TotalPay? propertyPlantEquipment;
	TotalPay? goodWill;
	TotalPay? intangibleAssets;
	TotalPay? otherAssets;
	TotalPay? deferredLongTermAssetCharges;
	TotalPay? totalAssets;
	TotalPay? accountsPayable;
	TotalPay? shortLongTermDebt;
	TotalPay? otherCurrentLiab;
	TotalPay? longTermDebt;
	TotalPay? otherLiab;
	TotalPay? totalCurrentLiabilities;
	TotalPay? totalLiab;
	TotalPay? commonStock;
	TotalPay? retainedEarnings;
	TotalPay? treasuryStock;
	TotalPay? otherStockholderEquity;
	TotalPay? totalStockholderEquity;
	TotalPay? netTangibleAssets;

	BalanceSheetStatements({this.maxAge, this.endDate, this.cash, this.shortTermInvestments, this.netReceivables, this.inventory, this.otherCurrentAssets, this.totalCurrentAssets, this.longTermInvestments, this.propertyPlantEquipment, this.goodWill, this.intangibleAssets, this.otherAssets, this.deferredLongTermAssetCharges, this.totalAssets, this.accountsPayable, this.shortLongTermDebt, this.otherCurrentLiab, this.longTermDebt, this.otherLiab, this.totalCurrentLiabilities, this.totalLiab, this.commonStock, this.retainedEarnings, this.treasuryStock, this.otherStockholderEquity, this.totalStockholderEquity, this.netTangibleAssets});

	BalanceSheetStatements.fromJson(Map<String, dynamic> json) {
		maxAge = json['maxAge'];
		endDate = json['endDate'] != null ? new RawFormatContainer.fromJson(json['endDate']) : null;
		cash = json['cash'] != null ? new TotalPay.fromJson(json['cash']) : null;
		shortTermInvestments = json['shortTermInvestments'] != null ? new TotalPay.fromJson(json['shortTermInvestments']) : null;
		netReceivables = json['netReceivables'] != null ? new TotalPay.fromJson(json['netReceivables']) : null;
		inventory = json['inventory'] != null ? new TotalPay.fromJson(json['inventory']) : null;
		otherCurrentAssets = json['otherCurrentAssets'] != null ? new TotalPay.fromJson(json['otherCurrentAssets']) : null;
		totalCurrentAssets = json['totalCurrentAssets'] != null ? new TotalPay.fromJson(json['totalCurrentAssets']) : null;
		longTermInvestments = json['longTermInvestments'] != null ? new TotalPay.fromJson(json['longTermInvestments']) : null;
		propertyPlantEquipment = json['propertyPlantEquipment'] != null ? new TotalPay.fromJson(json['propertyPlantEquipment']) : null;
		goodWill = json['goodWill'] != null ? new TotalPay.fromJson(json['goodWill']) : null;
		intangibleAssets = json['intangibleAssets'] != null ? new TotalPay.fromJson(json['intangibleAssets']) : null;
		otherAssets = json['otherAssets'] != null ? new TotalPay.fromJson(json['otherAssets']) : null;
		deferredLongTermAssetCharges = json['deferredLongTermAssetCharges'] != null ? new TotalPay.fromJson(json['deferredLongTermAssetCharges']) : null;
		totalAssets = json['totalAssets'] != null ? new TotalPay.fromJson(json['totalAssets']) : null;
		accountsPayable = json['accountsPayable'] != null ? new TotalPay.fromJson(json['accountsPayable']) : null;
		shortLongTermDebt = json['shortLongTermDebt'] != null ? new TotalPay.fromJson(json['shortLongTermDebt']) : null;
		otherCurrentLiab = json['otherCurrentLiab'] != null ? new TotalPay.fromJson(json['otherCurrentLiab']) : null;
		longTermDebt = json['longTermDebt'] != null ? new TotalPay.fromJson(json['longTermDebt']) : null;
		otherLiab = json['otherLiab'] != null ? new TotalPay.fromJson(json['otherLiab']) : null;
		totalCurrentLiabilities = json['totalCurrentLiabilities'] != null ? new TotalPay.fromJson(json['totalCurrentLiabilities']) : null;
		totalLiab = json['totalLiab'] != null ? new TotalPay.fromJson(json['totalLiab']) : null;
		commonStock = json['commonStock'] != null ? new TotalPay.fromJson(json['commonStock']) : null;
		retainedEarnings = json['retainedEarnings'] != null ? new TotalPay.fromJson(json['retainedEarnings']) : null;
		treasuryStock = json['treasuryStock'] != null ? new TotalPay.fromJson(json['treasuryStock']) : null;
		otherStockholderEquity = json['otherStockholderEquity'] != null ? new TotalPay.fromJson(json['otherStockholderEquity']) : null;
		totalStockholderEquity = json['totalStockholderEquity'] != null ? new TotalPay.fromJson(json['totalStockholderEquity']) : null;
		netTangibleAssets = json['netTangibleAssets'] != null ? new TotalPay.fromJson(json['netTangibleAssets']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['maxAge'] = this.maxAge;
		if (this.endDate != null) {
      data['endDate'] = this.endDate!.toJson();
    }
		if (this.cash != null) {
      data['cash'] = this.cash!.toJson();
    }
		if (this.shortTermInvestments != null) {
      data['shortTermInvestments'] = this.shortTermInvestments!.toJson();
    }
		if (this.netReceivables != null) {
      data['netReceivables'] = this.netReceivables!.toJson();
    }
		if (this.inventory != null) {
      data['inventory'] = this.inventory!.toJson();
    }
		if (this.otherCurrentAssets != null) {
      data['otherCurrentAssets'] = this.otherCurrentAssets!.toJson();
    }
		if (this.totalCurrentAssets != null) {
      data['totalCurrentAssets'] = this.totalCurrentAssets!.toJson();
    }
		if (this.longTermInvestments != null) {
      data['longTermInvestments'] = this.longTermInvestments!.toJson();
    }
		if (this.propertyPlantEquipment != null) {
      data['propertyPlantEquipment'] = this.propertyPlantEquipment!.toJson();
    }
		if (this.goodWill != null) {
      data['goodWill'] = this.goodWill!.toJson();
    }
		if (this.intangibleAssets != null) {
      data['intangibleAssets'] = this.intangibleAssets!.toJson();
    }
		if (this.otherAssets != null) {
      data['otherAssets'] = this.otherAssets!.toJson();
    }
		if (this.deferredLongTermAssetCharges != null) {
      data['deferredLongTermAssetCharges'] = this.deferredLongTermAssetCharges!.toJson();
    }
		if (this.totalAssets != null) {
      data['totalAssets'] = this.totalAssets!.toJson();
    }
		if (this.accountsPayable != null) {
      data['accountsPayable'] = this.accountsPayable!.toJson();
    }
		if (this.shortLongTermDebt != null) {
      data['shortLongTermDebt'] = this.shortLongTermDebt!.toJson();
    }
		if (this.otherCurrentLiab != null) {
      data['otherCurrentLiab'] = this.otherCurrentLiab!.toJson();
    }
		if (this.longTermDebt != null) {
      data['longTermDebt'] = this.longTermDebt!.toJson();
    }
		if (this.otherLiab != null) {
      data['otherLiab'] = this.otherLiab!.toJson();
    }
		if (this.totalCurrentLiabilities != null) {
      data['totalCurrentLiabilities'] = this.totalCurrentLiabilities!.toJson();
    }
		if (this.totalLiab != null) {
      data['totalLiab'] = this.totalLiab!.toJson();
    }
		if (this.commonStock != null) {
      data['commonStock'] = this.commonStock!.toJson();
    }
		if (this.retainedEarnings != null) {
      data['retainedEarnings'] = this.retainedEarnings!.toJson();
    }
		if (this.treasuryStock != null) {
      data['treasuryStock'] = this.treasuryStock!.toJson();
    }
		if (this.otherStockholderEquity != null) {
      data['otherStockholderEquity'] = this.otherStockholderEquity!.toJson();
    }
		if (this.totalStockholderEquity != null) {
      data['totalStockholderEquity'] = this.totalStockholderEquity!.toJson();
    }
		if (this.netTangibleAssets != null) {
      data['netTangibleAssets'] = this.netTangibleAssets!.toJson();
    }
		return data;
	}
}

class EarningsEstimate {
	TotalPay? avg;
	TotalPay? low;
	TotalPay? high;
	RawFormatContainer? yearAgoEps;
	TotalPay? numberOfAnalysts;
	RawFormatContainer? growth;

	EarningsEstimate({this.avg, this.low, this.high, this.yearAgoEps, this.numberOfAnalysts, this.growth});

	EarningsEstimate.fromJson(Map<String, dynamic> json) {
		avg = json['avg'] != null ? new TotalPay.fromJson(json['avg']) : null;
		low = json['low'] != null ? new TotalPay.fromJson(json['low']) : null;
		high = json['high'] != null ? new TotalPay.fromJson(json['high']) : null;
		yearAgoEps = json['yearAgoEps'] != null ? new RawFormatContainer.fromJson(json['yearAgoEps']) : null;
		numberOfAnalysts = json['numberOfAnalysts'] != null ? new TotalPay.fromJson(json['numberOfAnalysts']) : null;
		growth = json['growth'] != null ? new RawFormatContainer.fromJson(json['growth']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.avg != null) {
      data['avg'] = this.avg!.toJson();
    }
		if (this.low != null) {
      data['low'] = this.low!.toJson();
    }
		if (this.high != null) {
      data['high'] = this.high!.toJson();
    }
		if (this.yearAgoEps != null) {
      data['yearAgoEps'] = this.yearAgoEps!.toJson();
    }
		if (this.numberOfAnalysts != null) {
      data['numberOfAnalysts'] = this.numberOfAnalysts!.toJson();
    }
		if (this.growth != null) {
      data['growth'] = this.growth!.toJson();
    }
		return data;
	}
}

class RevenueEstimate {
	TotalPay? avg;
	TotalPay? low;
	TotalPay? high;
	TotalPay? numberOfAnalysts;
	TotalPay? yearAgoRevenue;
	RawFormatContainer? growth;

	RevenueEstimate({this.avg, this.low, this.high, this.numberOfAnalysts, this.yearAgoRevenue, this.growth});

	RevenueEstimate.fromJson(Map<String, dynamic> json) {
		avg = json['avg'] != null ? new TotalPay.fromJson(json['avg']) : null;
		low = json['low'] != null ? new TotalPay.fromJson(json['low']) : null;
		high = json['high'] != null ? new TotalPay.fromJson(json['high']) : null;
		numberOfAnalysts = json['numberOfAnalysts'] != null ? new TotalPay.fromJson(json['numberOfAnalysts']) : null;
		yearAgoRevenue = json['yearAgoRevenue'] != null ? new TotalPay.fromJson(json['yearAgoRevenue']) : null;
		growth = json['growth'] != null ? new RawFormatContainer.fromJson(json['growth']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.avg != null) {
      data['avg'] = this.avg!.toJson();
    }
		if (this.low != null) {
      data['low'] = this.low!.toJson();
    }
		if (this.high != null) {
      data['high'] = this.high!.toJson();
    }
		if (this.numberOfAnalysts != null) {
      data['numberOfAnalysts'] = this.numberOfAnalysts!.toJson();
    }
		if (this.yearAgoRevenue != null) {
      data['yearAgoRevenue'] = this.yearAgoRevenue!.toJson();
    }
		if (this.growth != null) {
      data['growth'] = this.growth!.toJson();
    }
		return data;
	}
}

class EpsTrend {
	RawFormatContainer? current;
	RawFormatContainer? i7daysAgo;
	RawFormatContainer? i30daysAgo;
	RawFormatContainer? i60daysAgo;
	RawFormatContainer? i90daysAgo;

	EpsTrend({this.current, this.i7daysAgo, this.i30daysAgo, this.i60daysAgo, this.i90daysAgo});

	EpsTrend.fromJson(Map<String, dynamic> json) {
		current = json['current'] != null ? new RawFormatContainer.fromJson(json['current']) : null;
		i7daysAgo = json['7daysAgo'] != null ? new RawFormatContainer.fromJson(json['7daysAgo']) : null;
		i30daysAgo = json['30daysAgo'] != null ? new RawFormatContainer.fromJson(json['30daysAgo']) : null;
		i60daysAgo = json['60daysAgo'] != null ? new RawFormatContainer.fromJson(json['60daysAgo']) : null;
		i90daysAgo = json['90daysAgo'] != null ? new RawFormatContainer.fromJson(json['90daysAgo']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.current != null) {
      data['current'] = this.current!.toJson();
    }
		if (this.i7daysAgo != null) {
      data['7daysAgo'] = this.i7daysAgo!.toJson();
    }
		if (this.i30daysAgo != null) {
      data['30daysAgo'] = this.i30daysAgo!.toJson();
    }
		if (this.i60daysAgo != null) {
      data['60daysAgo'] = this.i60daysAgo!.toJson();
    }
		if (this.i90daysAgo != null) {
      data['90daysAgo'] = this.i90daysAgo!.toJson();
    }
		return data;
	}
}

class EpsRevisions {
	TotalPay? upLast7days;
	TotalPay? upLast30days;
	ExercisedValue? downLast30days;
	RawFormatContainer? downLast90days;

	EpsRevisions({this.upLast7days, this.upLast30days, this.downLast30days, this.downLast90days});

	EpsRevisions.fromJson(Map<String, dynamic> json) {
		upLast7days = json['upLast7days'] != null ? new TotalPay.fromJson(json['upLast7days']) : null;
		upLast30days = json['upLast30days'] != null ? new TotalPay.fromJson(json['upLast30days']) : null;
		downLast30days = json['downLast30days'] != null ? new ExercisedValue.fromJson(json['downLast30days']) : null;
		downLast90days = json['downLast90days'] != null ? new RawFormatContainer.fromJson(json['downLast90days']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.upLast7days != null) {
      data['upLast7days'] = this.upLast7days!.toJson();
    }
		if (this.upLast30days != null) {
      data['upLast30days'] = this.upLast30days!.toJson();
    }
		if (this.downLast30days != null) {
      data['downLast30days'] = this.downLast30days!.toJson();
    }
		if (this.downLast90days != null) {
      data['downLast90days'] = this.downLast90days!.toJson();
    }
		return data;
	}
}

class SecFilings {
	List<Filings>? filings;
	int? maxAge;

	SecFilings({this.filings, this.maxAge});

	SecFilings.fromJson(Map<String, dynamic> json) {
		if (json['filings'] != null) {
			filings = [];
			json['filings'].forEach((v) { filings!.add(new Filings.fromJson(v)); });
		}
		maxAge = json['maxAge'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.filings != null) {
      data['filings'] = this.filings!.map((v) => v.toJson()).toList();
    }
		data['maxAge'] = this.maxAge;
		return data;
	}
}

class Filings {
	String? date;
	int? epochDate;
	String? type;
	String? title;
	String? edgarUrl;
	int? maxAge;

	Filings({this.date, this.epochDate, this.type, this.title, this.edgarUrl, this.maxAge});

	Filings.fromJson(Map<String, dynamic> json) {
		date = json['date'];
		epochDate = json['epochDate'];
		type = json['type'];
		title = json['title'];
		edgarUrl = json['edgarUrl'];
		maxAge = json['maxAge'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['date'] = this.date;
		data['epochDate'] = this.epochDate;
		data['type'] = this.type;
		data['title'] = this.title;
		data['edgarUrl'] = this.edgarUrl;
		data['maxAge'] = this.maxAge;
		return data;
	}
}

class MajorHoldersBreakdown {
	int? maxAge;
	RawFormatContainer? insidersPercentHeld;
	RawFormatContainer? institutionsPercentHeld;
	RawFormatContainer? institutionsFloatPercentHeld;
	TotalPay? institutionsCount;

	MajorHoldersBreakdown({this.maxAge, this.insidersPercentHeld, this.institutionsPercentHeld, this.institutionsFloatPercentHeld, this.institutionsCount});

	MajorHoldersBreakdown.fromJson(Map<String, dynamic> json) {
		maxAge = json['maxAge'];
		insidersPercentHeld = json['insidersPercentHeld'] != null ? new RawFormatContainer.fromJson(json['insidersPercentHeld']) : null;
		institutionsPercentHeld = json['institutionsPercentHeld'] != null ? new RawFormatContainer.fromJson(json['institutionsPercentHeld']) : null;
		institutionsFloatPercentHeld = json['institutionsFloatPercentHeld'] != null ? new RawFormatContainer.fromJson(json['institutionsFloatPercentHeld']) : null;
		institutionsCount = json['institutionsCount'] != null ? new TotalPay.fromJson(json['institutionsCount']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['maxAge'] = this.maxAge;
		if (this.insidersPercentHeld != null) {
      data['insidersPercentHeld'] = this.insidersPercentHeld!.toJson();
    }
		if (this.institutionsPercentHeld != null) {
      data['institutionsPercentHeld'] = this.institutionsPercentHeld!.toJson();
    }
		if (this.institutionsFloatPercentHeld != null) {
      data['institutionsFloatPercentHeld'] = this.institutionsFloatPercentHeld!.toJson();
    }
		if (this.institutionsCount != null) {
      data['institutionsCount'] = this.institutionsCount!.toJson();
    }
		return data;
	}
}

class EarningsHistory {
	int? maxAge;
	RawFormatContainer? epsActual;
	RawFormatContainer? epsEstimate;
	RawFormatContainer? epsDifference;
	RawFormatContainer? surprisePercent;
	RawFormatContainer? quarter;
	String? period;

	EarningsHistory({this.maxAge, this.epsActual, this.epsEstimate, this.epsDifference, this.surprisePercent, this.quarter, this.period});

	EarningsHistory.fromJson(Map<String, dynamic> json) {
		maxAge = json['maxAge'];
		epsActual = json['epsActual'] != null ? new RawFormatContainer.fromJson(json['epsActual']) : null;
		epsEstimate = json['epsEstimate'] != null ? new RawFormatContainer.fromJson(json['epsEstimate']) : null;
		epsDifference = json['epsDifference'] != null ? new RawFormatContainer.fromJson(json['epsDifference']) : null;
		surprisePercent = json['surprisePercent'] != null ? new RawFormatContainer.fromJson(json['surprisePercent']) : null;
		quarter = json['quarter'] != null ? new RawFormatContainer.fromJson(json['quarter']) : null;
		period = json['period'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['maxAge'] = this.maxAge;
		if (this.epsActual != null) {
      data['epsActual'] = this.epsActual!.toJson();
    }
		if (this.epsEstimate != null) {
      data['epsEstimate'] = this.epsEstimate!.toJson();
    }
		if (this.epsDifference != null) {
      data['epsDifference'] = this.epsDifference!.toJson();
    }
		if (this.surprisePercent != null) {
      data['surprisePercent'] = this.surprisePercent!.toJson();
    }
		if (this.quarter != null) {
      data['quarter'] = this.quarter!.toJson();
    }
		data['period'] = this.period;
		return data;
	}
}

class MajorDirectHolders {
	List<Holders>? holders;
	int? maxAge;

	MajorDirectHolders({this.holders, this.maxAge});

	MajorDirectHolders.fromJson(Map<String, dynamic> json) {
		if (json['holders'] != null) {
			holders = [];
			json['holders'].forEach((v) { holders!.add(new Holders.fromJson(v)); });
		}
		maxAge = json['maxAge'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.holders != null) {
      data['holders'] = this.holders!.map((v) => v.toJson()).toList();
    }
		data['maxAge'] = this.maxAge;
		return data;
	}
}

class SummaryProfile {
	String? address1;
	String? city;
	String? state;
	String? zip;
	String? country;
	String? phone;
	String? website;
	String? industry;
	String? sector;
	String? longBusinessSummary;
	int? fullTimeEmployees;
	List<CompanyOfficers>? companyOfficers;
	int? maxAge;

	SummaryProfile({this.address1, this.city, this.state, this.zip, this.country, this.phone, this.website, this.industry, this.sector, this.longBusinessSummary, this.fullTimeEmployees, this.companyOfficers, this.maxAge});

	SummaryProfile.fromJson(Map<String, dynamic> json) {
		address1 = json['address1'];
		city = json['city'];
		state = json['state'];
		zip = json['zip'];
		country = json['country'];
		phone = json['phone'];
		website = json['website'];
		industry = json['industry'];
		sector = json['sector'];
		longBusinessSummary = json['longBusinessSummary'];
		fullTimeEmployees = json['fullTimeEmployees'];
		if (json['companyOfficers'] != null) {
			companyOfficers = [];
			json['companyOfficers'].forEach((v) { companyOfficers!.add(new CompanyOfficers.fromJson(v)); });
		}
		maxAge = json['maxAge'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['address1'] = this.address1;
		data['city'] = this.city;
		data['state'] = this.state;
		data['zip'] = this.zip;
		data['country'] = this.country;
		data['phone'] = this.phone;
		data['website'] = this.website;
		data['industry'] = this.industry;
		data['sector'] = this.sector;
		data['longBusinessSummary'] = this.longBusinessSummary;
		data['fullTimeEmployees'] = this.fullTimeEmployees;
		if (this.companyOfficers != null) {
      data['companyOfficers'] = this.companyOfficers!.map((v) => v.toJson()).toList();
    }
		data['maxAge'] = this.maxAge;
		return data;
	}
}

class NetSharePurchaseActivity {
	int? maxAge;
	String? period;
	TotalPay? buyInfoCount;
	TotalPay? buyInfoShares;
	RawFormatContainer? buyPercentInsiderShares;
	TotalPay? sellInfoCount;
	TotalPay? sellInfoShares;
	RawFormatContainer? sellPercentInsiderShares;
	TotalPay? netInfoCount;
	TotalPay? netInfoShares;
	RawFormatContainer? netPercentInsiderShares;
	TotalPay? totalInsiderShares;

	NetSharePurchaseActivity({this.maxAge, this.period, this.buyInfoCount, this.buyInfoShares, this.buyPercentInsiderShares, this.sellInfoCount, this.sellInfoShares, this.sellPercentInsiderShares, this.netInfoCount, this.netInfoShares, this.netPercentInsiderShares, this.totalInsiderShares});

	NetSharePurchaseActivity.fromJson(Map<String, dynamic> json) {
		maxAge = json['maxAge'];
		period = json['period'];
		buyInfoCount = json['buyInfoCount'] != null ? new TotalPay.fromJson(json['buyInfoCount']) : null;
		buyInfoShares = json['buyInfoShares'] != null ? new TotalPay.fromJson(json['buyInfoShares']) : null;
		buyPercentInsiderShares = json['buyPercentInsiderShares'] != null ? new RawFormatContainer.fromJson(json['buyPercentInsiderShares']) : null;
		sellInfoCount = json['sellInfoCount'] != null ? new TotalPay.fromJson(json['sellInfoCount']) : null;
		sellInfoShares = json['sellInfoShares'] != null ? new TotalPay.fromJson(json['sellInfoShares']) : null;
		sellPercentInsiderShares = json['sellPercentInsiderShares'] != null ? new RawFormatContainer.fromJson(json['sellPercentInsiderShares']) : null;
		netInfoCount = json['netInfoCount'] != null ? new TotalPay.fromJson(json['netInfoCount']) : null;
		netInfoShares = json['netInfoShares'] != null ? new TotalPay.fromJson(json['netInfoShares']) : null;
		netPercentInsiderShares = json['netPercentInsiderShares'] != null ? new RawFormatContainer.fromJson(json['netPercentInsiderShares']) : null;
		totalInsiderShares = json['totalInsiderShares'] != null ? new TotalPay.fromJson(json['totalInsiderShares']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['maxAge'] = this.maxAge;
		data['period'] = this.period;
		if (this.buyInfoCount != null) {
      data['buyInfoCount'] = this.buyInfoCount!.toJson();
    }
		if (this.buyInfoShares != null) {
      data['buyInfoShares'] = this.buyInfoShares!.toJson();
    }
		if (this.buyPercentInsiderShares != null) {
      data['buyPercentInsiderShares'] = this.buyPercentInsiderShares!.toJson();
    }
		if (this.sellInfoCount != null) {
      data['sellInfoCount'] = this.sellInfoCount!.toJson();
    }
		if (this.sellInfoShares != null) {
      data['sellInfoShares'] = this.sellInfoShares!.toJson();
    }
		if (this.sellPercentInsiderShares != null) {
      data['sellPercentInsiderShares'] = this.sellPercentInsiderShares!.toJson();
    }
		if (this.netInfoCount != null) {
      data['netInfoCount'] = this.netInfoCount!.toJson();
    }
		if (this.netInfoShares != null) {
      data['netInfoShares'] = this.netInfoShares!.toJson();
    }
		if (this.netPercentInsiderShares != null) {
      data['netPercentInsiderShares'] = this.netPercentInsiderShares!.toJson();
    }
		if (this.totalInsiderShares != null) {
      data['totalInsiderShares'] = this.totalInsiderShares!.toJson();
    }
		return data;
	}
}

class InsiderTransactions {
	List<Transactions>? transactions;
	int? maxAge;

	InsiderTransactions({this.transactions, this.maxAge});

	InsiderTransactions.fromJson(Map<String, dynamic> json) {
		if (json['transactions'] != null) {
			transactions = [];
			json['transactions'].forEach((v) { transactions!.add(new Transactions.fromJson(v)); });
		}
		maxAge = json['maxAge'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.transactions != null) {
      data['transactions'] = this.transactions!.map((v) => v.toJson()).toList();
    }
		data['maxAge'] = this.maxAge;
		return data;
	}
}

class Transactions {
	int? maxAge;
	TotalPay? shares;
	TotalPay? value;
	String? filerUrl;
	String? transactionText;
	String? filerName;
	String? filerRelation;
	String? moneyText;
	RawFormatContainer? startDate;
	String? ownership;

	Transactions({this.maxAge, this.shares, this.value, this.filerUrl, this.transactionText, this.filerName, this.filerRelation, this.moneyText, this.startDate, this.ownership});

	Transactions.fromJson(Map<String, dynamic> json) {
		maxAge = json['maxAge'];
		shares = json['shares'] != null ? new TotalPay.fromJson(json['shares']) : null;
		value = json['value'] != null ? new TotalPay.fromJson(json['value']) : null;
		filerUrl = json['filerUrl'];
		transactionText = json['transactionText'];
		filerName = json['filerName'];
		filerRelation = json['filerRelation'];
		moneyText = json['moneyText'];
		startDate = json['startDate'] != null ? new RawFormatContainer.fromJson(json['startDate']) : null;
		ownership = json['ownership'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['maxAge'] = this.maxAge;
		if (this.shares != null) {
      data['shares'] = this.shares!.toJson();
    }
		if (this.value != null) {
      data['value'] = this.value!.toJson();
    }
		data['filerUrl'] = this.filerUrl;
		data['transactionText'] = this.transactionText;
		data['filerName'] = this.filerName;
		data['filerRelation'] = this.filerRelation;
		data['moneyText'] = this.moneyText;
		if (this.startDate != null) {
      data['startDate'] = this.startDate!.toJson();
    }
		data['ownership'] = this.ownership;
		return data;
	}
}

class Earnings {
	int? maxAge;
	EarningsChart? earningsChart;
	FinancialsChart? financialsChart;
	String? financialCurrency;

	Earnings({this.maxAge, this.earningsChart, this.financialsChart, this.financialCurrency});

	Earnings.fromJson(Map<String, dynamic> json) {
		maxAge = json['maxAge'];
		earningsChart = json['earningsChart'] != null ? new EarningsChart.fromJson(json['earningsChart']) : null;
		financialsChart = json['financialsChart'] != null ? new FinancialsChart.fromJson(json['financialsChart']) : null;
		financialCurrency = json['financialCurrency'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['maxAge'] = this.maxAge;
		if (this.earningsChart != null) {
      data['earningsChart'] = this.earningsChart!.toJson();
    }
		if (this.financialsChart != null) {
      data['financialsChart'] = this.financialsChart!.toJson();
    }
		data['financialCurrency'] = this.financialCurrency;
		return data;
	}
}

class EarningsChart {
	List<EarningsQuarterly>? quarterly;
	RawFormatContainer? currentQuarterEstimate;
	String? currentQuarterEstimateDate;
	int? currentQuarterEstimateYear;
	List<RawFormatContainer>? earningsDate;

	EarningsChart({this.quarterly, this.currentQuarterEstimate, this.currentQuarterEstimateDate, this.currentQuarterEstimateYear, this.earningsDate});

	EarningsChart.fromJson(Map<String, dynamic> json) {
		if (json['quarterly'] != null) {
			quarterly = [];
			json['quarterly'].forEach((v) { quarterly!.add(new EarningsQuarterly.fromJson(v)); });
		}
		currentQuarterEstimate = json['currentQuarterEstimate'] != null ? new RawFormatContainer.fromJson(json['currentQuarterEstimate']) : null;
		currentQuarterEstimateDate = json['currentQuarterEstimateDate'];
		currentQuarterEstimateYear = json['currentQuarterEstimateYear'];
		if (json['earningsDate'] != null) {
			earningsDate = [];
			json['earningsDate'].forEach((v) { earningsDate!.add(new RawFormatContainer.fromJson(v)); });
		}
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.quarterly != null) {
      data['quarterly'] = this.quarterly!.map((v) => v.toJson()).toList();
    }
		if (this.currentQuarterEstimate != null) {
      data['currentQuarterEstimate'] = this.currentQuarterEstimate!.toJson();
    }
		data['currentQuarterEstimateDate'] = this.currentQuarterEstimateDate;
		data['currentQuarterEstimateYear'] = this.currentQuarterEstimateYear;
		if (this.earningsDate != null) {
      data['earningsDate'] = this.earningsDate!.map((v) => v.toJson()).toList();
    }
		return data;
	}
}

class EarningsQuarterly {
	String? date;
	RawFormatContainer? actual;
	RawFormatContainer? estimate;

	EarningsQuarterly({this.date, this.actual, this.estimate});

	EarningsQuarterly.fromJson(Map<String, dynamic> json) {
		date = json['date'];
		actual = json['actual'] != null ? new RawFormatContainer.fromJson(json['actual']) : null;
		estimate = json['estimate'] != null ? new RawFormatContainer.fromJson(json['estimate']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['date'] = this.date;
		if (this.actual != null) {
      data['actual'] = this.actual!.toJson();
    }
		if (this.estimate != null) {
      data['estimate'] = this.estimate!.toJson();
    }
		return data;
	}
}

class FinancialsChart {
	List<Yearly>? yearly;
	List<FinancialsQuarterly>? quarterly;

	FinancialsChart({this.yearly, this.quarterly});

	FinancialsChart.fromJson(Map<String, dynamic> json) {
		if (json['yearly'] != null) {
			yearly =[];
			json['yearly'].forEach((v) { yearly!.add(new Yearly.fromJson(v)); });
		}
		if (json['quarterly'] != null) {
			quarterly = [];
			json['quarterly'].forEach((v) { quarterly!.add(new FinancialsQuarterly.fromJson(v)); });
		}
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.yearly != null) {
      data['yearly'] = this.yearly!.map((v) => v.toJson()).toList();
    }
		if (this.quarterly != null) {
      data['quarterly'] = this.quarterly!.map((v) => v.toJson()).toList();
    }
		return data;
	}
}

class Yearly {
	int? date;
	TotalPay? revenue;
	TotalPay? earnings;

	Yearly({this.date, this.revenue, this.earnings});

	Yearly.fromJson(Map<String, dynamic> json) {
		date = json['date'];
		revenue = json['revenue'] != null ? new TotalPay.fromJson(json['revenue']) : null;
		earnings = json['earnings'] != null ? new TotalPay.fromJson(json['earnings']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['date'] = this.date;
		if (this.revenue != null) {
      data['revenue'] = this.revenue!.toJson();
    }
		if (this.earnings != null) {
      data['earnings'] = this.earnings!.toJson();
    }
		return data;
	}
}

class FinancialsQuarterly {
	String? date;
	RawFormatContainer? revenue;
	RawFormatContainer? earnings;

	FinancialsQuarterly({this.date, this.revenue, this.earnings});

	FinancialsQuarterly.fromJson(Map<String, dynamic> json) {
		date = json['date'];
		revenue = json['revenue'] != null ? new RawFormatContainer.fromJson(json['revenue']) : null;
		earnings = json['earnings'] != null ? new RawFormatContainer.fromJson(json['earnings']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['date'] = this.date;
		if (this.revenue != null) {
      data['revenue'] = this.revenue!.toJson();
    }
		if (this.earnings != null) {
      data['earnings'] = this.earnings!.toJson();
    }
		return data;
	}
}

class FinancialData {
	int? maxAge;
	RawFormatContainer? currentPrice;
	RawFormatContainer? targetHighPrice;
	RawFormatContainer? targetLowPrice;
	RawFormatContainer? targetMeanPrice;
	RawFormatContainer? targetMedianPrice;
	RawFormatContainer? recommendationMean;
	String? recommendationKey;
	TotalPay? numberOfAnalystOpinions;
	TotalPay? totalCash;
	RawFormatContainer? totalCashPerShare;
	TotalPay? ebitda;
	TotalPay? totalDebt;
	RawFormatContainer? quickRatio;
	RawFormatContainer? currentRatio;
	TotalPay? totalRevenue;
	RawFormatContainer? debtToEquity;
	RawFormatContainer? revenuePerShare;
	RawFormatContainer? returnOnAssets;
	RawFormatContainer? returnOnEquity;
	TotalPay? grossProfits;
	TotalPay? freeCashflow;
	TotalPay? operatingCashflow;
	RawFormatContainer? earningsGrowth;
	RawFormatContainer? revenueGrowth;
	RawFormatContainer? grossMargins;
	RawFormatContainer? ebitdaMargins;
	RawFormatContainer? operatingMargins;
	RawFormatContainer? profitMargins;
	String? financialCurrency;

	FinancialData({this.maxAge, this.currentPrice, this.targetHighPrice, this.targetLowPrice, this.targetMeanPrice, this.targetMedianPrice, this.recommendationMean, this.recommendationKey, this.numberOfAnalystOpinions, this.totalCash, this.totalCashPerShare, this.ebitda, this.totalDebt, this.quickRatio, this.currentRatio, this.totalRevenue, this.debtToEquity, this.revenuePerShare, this.returnOnAssets, this.returnOnEquity, this.grossProfits, this.freeCashflow, this.operatingCashflow, this.earningsGrowth, this.revenueGrowth, this.grossMargins, this.ebitdaMargins, this.operatingMargins, this.profitMargins, this.financialCurrency});

	FinancialData.fromJson(Map<String, dynamic> json) {
		maxAge = json['maxAge'];
		currentPrice = json['currentPrice'] != null ? new RawFormatContainer.fromJson(json['currentPrice']) : null;
		targetHighPrice = json['targetHighPrice'] != null ? new RawFormatContainer.fromJson(json['targetHighPrice']) : null;
		targetLowPrice = json['targetLowPrice'] != null ? new RawFormatContainer.fromJson(json['targetLowPrice']) : null;
		targetMeanPrice = json['targetMeanPrice'] != null ? new RawFormatContainer.fromJson(json['targetMeanPrice']) : null;
		targetMedianPrice = json['targetMedianPrice'] != null ? new RawFormatContainer.fromJson(json['targetMedianPrice']) : null;
		recommendationMean = json['recommendationMean'] != null ? new RawFormatContainer.fromJson(json['recommendationMean']) : null;
		recommendationKey = json['recommendationKey'];
		numberOfAnalystOpinions = json['numberOfAnalystOpinions'] != null ? new TotalPay.fromJson(json['numberOfAnalystOpinions']) : null;
		totalCash = json['totalCash'] != null ? new TotalPay.fromJson(json['totalCash']) : null;
		totalCashPerShare = json['totalCashPerShare'] != null ? new RawFormatContainer.fromJson(json['totalCashPerShare']) : null;
		ebitda = json['ebitda'] != null ? new TotalPay.fromJson(json['ebitda']) : null;
		totalDebt = json['totalDebt'] != null ? new TotalPay.fromJson(json['totalDebt']) : null;
		quickRatio = json['quickRatio'] != null ? new RawFormatContainer.fromJson(json['quickRatio']) : null;
		currentRatio = json['currentRatio'] != null ? new RawFormatContainer.fromJson(json['currentRatio']) : null;
		totalRevenue = json['totalRevenue'] != null ? new TotalPay.fromJson(json['totalRevenue']) : null;
		debtToEquity = json['debtToEquity'] != null ? new RawFormatContainer.fromJson(json['debtToEquity']) : null;
		revenuePerShare = json['revenuePerShare'] != null ? new RawFormatContainer.fromJson(json['revenuePerShare']) : null;
		returnOnAssets = json['returnOnAssets'] != null ? new RawFormatContainer.fromJson(json['returnOnAssets']) : null;
		returnOnEquity = json['returnOnEquity'] != null ? new RawFormatContainer.fromJson(json['returnOnEquity']) : null;
		grossProfits = json['grossProfits'] != null ? new TotalPay.fromJson(json['grossProfits']) : null;
		freeCashflow = json['freeCashflow'] != null ? new TotalPay.fromJson(json['freeCashflow']) : null;
		operatingCashflow = json['operatingCashflow'] != null ? new TotalPay.fromJson(json['operatingCashflow']) : null;
		earningsGrowth = json['earningsGrowth'] != null ? new RawFormatContainer.fromJson(json['earningsGrowth']) : null;
		revenueGrowth = json['revenueGrowth'] != null ? new RawFormatContainer.fromJson(json['revenueGrowth']) : null;
		grossMargins = json['grossMargins'] != null ? new RawFormatContainer.fromJson(json['grossMargins']) : null;
		ebitdaMargins = json['ebitdaMargins'] != null ? new RawFormatContainer.fromJson(json['ebitdaMargins']) : null;
		operatingMargins = json['operatingMargins'] != null ? new RawFormatContainer.fromJson(json['operatingMargins']) : null;
		profitMargins = json['profitMargins'] != null ? new RawFormatContainer.fromJson(json['profitMargins']) : null;
		financialCurrency = json['financialCurrency'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['maxAge'] = this.maxAge;
		if (this.currentPrice != null) {
      data['currentPrice'] = this.currentPrice!.toJson();
    }
		if (this.targetHighPrice != null) {
      data['targetHighPrice'] = this.targetHighPrice!.toJson();
    }
		if (this.targetLowPrice != null) {
      data['targetLowPrice'] = this.targetLowPrice!.toJson();
    }
		if (this.targetMeanPrice != null) {
      data['targetMeanPrice'] = this.targetMeanPrice!.toJson();
    }
		if (this.targetMedianPrice != null) {
      data['targetMedianPrice'] = this.targetMedianPrice!.toJson();
    }
		if (this.recommendationMean != null) {
      data['recommendationMean'] = this.recommendationMean!.toJson();
    }
		data['recommendationKey'] = this.recommendationKey;
		if (this.numberOfAnalystOpinions != null) {
      data['numberOfAnalystOpinions'] = this.numberOfAnalystOpinions!.toJson();
    }
		if (this.totalCash != null) {
      data['totalCash'] = this.totalCash!.toJson();
    }
		if (this.totalCashPerShare != null) {
      data['totalCashPerShare'] = this.totalCashPerShare!.toJson();
    }
		if (this.ebitda != null) {
      data['ebitda'] = this.ebitda!.toJson();
    }
		if (this.totalDebt != null) {
      data['totalDebt'] = this.totalDebt!.toJson();
    }
		if (this.quickRatio != null) {
      data['quickRatio'] = this.quickRatio!.toJson();
    }
		if (this.currentRatio != null) {
      data['currentRatio'] = this.currentRatio!.toJson();
    }
		if (this.totalRevenue != null) {
      data['totalRevenue'] = this.totalRevenue!.toJson();
    }
		if (this.debtToEquity != null) {
      data['debtToEquity'] = this.debtToEquity!.toJson();
    }
		if (this.revenuePerShare != null) {
      data['revenuePerShare'] = this.revenuePerShare!.toJson();
    }
		if (this.returnOnAssets != null) {
      data['returnOnAssets'] = this.returnOnAssets!.toJson();
    }
		if (this.returnOnEquity != null) {
      data['returnOnEquity'] = this.returnOnEquity!.toJson();
    }
		if (this.grossProfits != null) {
      data['grossProfits'] = this.grossProfits!.toJson();
    }
		if (this.freeCashflow != null) {
      data['freeCashflow'] = this.freeCashflow!.toJson();
    }
		if (this.operatingCashflow != null) {
      data['operatingCashflow'] = this.operatingCashflow!.toJson();
    }
		if (this.earningsGrowth != null) {
      data['earningsGrowth'] = this.earningsGrowth!.toJson();
    }
		if (this.revenueGrowth != null) {
      data['revenueGrowth'] = this.revenueGrowth!.toJson();
    }
		if (this.grossMargins != null) {
      data['grossMargins'] = this.grossMargins!.toJson();
    }
		if (this.ebitdaMargins != null) {
      data['ebitdaMargins'] = this.ebitdaMargins!.toJson();
    }
		if (this.operatingMargins != null) {
      data['operatingMargins'] = this.operatingMargins!.toJson();
    }
		if (this.profitMargins != null) {
      data['profitMargins'] = this.profitMargins!.toJson();
    }
		data['financialCurrency'] = this.financialCurrency;
		return data;
	}
}
