package com.alibaba.fastjson.parser;

/* JADX INFO: loaded from: classes.dex */
public enum Feature {
    AutoCloseSource,
    AllowComment,
    AllowUnQuotedFieldNames,
    AllowSingleQuotes,
    InternFieldNames,
    AllowISO8601DateFormat,
    AllowArbitraryCommas,
    UseBigDecimal,
    IgnoreNotMatch,
    SortFeidFastMatch,
    DisableASM,
    DisableCircularReferenceDetect,
    InitStringFieldAsEmpty,
    SupportArrayToBean,
    OrderedField,
    DisableSpecialKeyDetect,
    UseObjectArray,
    SupportNonPublicField,
    IgnoreAutoType,
    DisableFieldSmartMatch,
    SupportAutoType,
    NonStringKeyAsString,
    CustomMapDeserializer,
    ErrorOnEnumNotMatch,
    SafeMode,
    TrimStringFieldValue,
    UseNativeJavaObject;

    public final int mask = 1 << ordinal();

    Feature() {
    }

    public static int config(int i11, Feature feature, boolean z10) {
        return z10 ? i11 | feature.mask : i11 & (~feature.mask);
    }

    public static boolean isEnabled(int i11, Feature feature) {
        return (i11 & feature.mask) != 0;
    }

    public static int of(Feature[] featureArr) {
        if (featureArr == null) {
            return 0;
        }
        int i11 = 0;
        for (Feature feature : featureArr) {
            i11 |= feature.mask;
        }
        return i11;
    }

    public final int getMask() {
        return this.mask;
    }
}
