package com.tencent.tinker.loader.hotplug;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class ActivityStubManager {
    private static Map<String, String> sTargetToStubClassNameMap = new HashMap();
    private static final int[] STANDARD_STUB_COUNT_SLOTS = {10, 3};
    private static final int[] SINGLETOP_STUB_COUNT_SLOTS = {10, 3};
    private static final int[] SINGLETASK_STUB_COUNT_SLOTS = {10, 3};
    private static final int[] SINGLEINSTANCE_STUB_COUNT_SLOTS = {10, 3};
    private static final int[] NEXT_STANDARD_STUB_IDX_SLOTS = {0, 0};
    private static final int[] NEXT_SINGLETOP_STUB_IDX_SLOTS = {0, 0};
    private static final int[] NEXT_SINGLETASK_STUB_IDX_SLOTS = {0, 0};
    private static final int[] NEXT_SINGLEINSTANCE_STUB_IDX_SLOTS = {0, 0};

    private ActivityStubManager() {
        throw new UnsupportedOperationException();
    }

    public static String assignStub(String str, int i11, boolean z10) {
        String str2;
        int[] iArr;
        int[] iArr2;
        char c11;
        String str3 = sTargetToStubClassNameMap.get(str);
        if (str3 != null) {
            return str3;
        }
        if (i11 == 1) {
            str2 = ActivityStubs.SINGLETOP_STUB_CLASSNAME_FORMAT;
            iArr = NEXT_SINGLETOP_STUB_IDX_SLOTS;
            iArr2 = SINGLETOP_STUB_COUNT_SLOTS;
        } else if (i11 == 2) {
            str2 = ActivityStubs.SINGLETASK_STUB_CLASSNAME_FORMAT;
            iArr = NEXT_SINGLETASK_STUB_IDX_SLOTS;
            iArr2 = SINGLETASK_STUB_COUNT_SLOTS;
        } else if (i11 != 3) {
            str2 = ActivityStubs.STARDARD_STUB_CLASSNAME_FORMAT;
            iArr = NEXT_STANDARD_STUB_IDX_SLOTS;
            iArr2 = STANDARD_STUB_COUNT_SLOTS;
        } else {
            str2 = ActivityStubs.SINGLEINSTANCE_STUB_CLASSNAME_FORMAT;
            iArr = NEXT_SINGLEINSTANCE_STUB_IDX_SLOTS;
            iArr2 = SINGLEINSTANCE_STUB_COUNT_SLOTS;
        }
        if (z10) {
            str2 = str2 + "_T";
            c11 = 1;
        } else {
            c11 = 0;
        }
        int i12 = iArr[c11];
        iArr[c11] = i12 + 1;
        if (i12 >= iArr2[c11]) {
            iArr[c11] = 0;
            i12 = 0;
        }
        String str4 = String.format(str2, Integer.valueOf(i12));
        sTargetToStubClassNameMap.put(str, str4);
        return str4;
    }
}
