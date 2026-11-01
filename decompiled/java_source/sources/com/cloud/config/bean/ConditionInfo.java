package com.cloud.config.bean;

import android.util.Log;
import com.cloud.config.utils.CommonUtils;
import com.cloud.config.utils.XLogUtil;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u000e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0007J\u0011\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0006HÆ\u0003J'\u0010\u0015\u001a\u00020\u00002\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÆ\u0001J\u0013\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001J\t\u0010\u001b\u001a\u00020\u0006HÖ\u0001R\u001c\u0010\b\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u0019\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u00068F¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0010¨\u0006\u001c"}, d2 = {"Lcom/cloud/config/bean/ConditionInfo;", "", "conditionParams", "", "Lcom/cloud/config/bean/ConditionParam;", "defaultCacheFileUrl", "", "(Ljava/util/List;Ljava/lang/String;)V", "_conditionParam", "get_conditionParam", "()Lcom/cloud/config/bean/ConditionParam;", "set_conditionParam", "(Lcom/cloud/config/bean/ConditionParam;)V", "getConditionParams", "()Ljava/util/List;", "getDefaultCacheFileUrl", "()Ljava/lang/String;", "matchCacheUrl", "getMatchCacheUrl", "component1", "component2", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "", "toString", "config_release"}, k = 1, mv = {1, 6, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class ConditionInfo {
    private ConditionParam _conditionParam;
    private final List<ConditionParam> conditionParams;
    private final String defaultCacheFileUrl;

    public ConditionInfo(List<ConditionParam> list, String str) {
        this.conditionParams = list;
        this.defaultCacheFileUrl = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ConditionInfo copy$default(ConditionInfo conditionInfo, List list, String str, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            list = conditionInfo.conditionParams;
        }
        if ((i11 & 2) != 0) {
            str = conditionInfo.defaultCacheFileUrl;
        }
        return conditionInfo.copy(list, str);
    }

    public final List<ConditionParam> component1() {
        return this.conditionParams;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getDefaultCacheFileUrl() {
        return this.defaultCacheFileUrl;
    }

    public final ConditionInfo copy(List<ConditionParam> conditionParams, String defaultCacheFileUrl) {
        return new ConditionInfo(conditionParams, defaultCacheFileUrl);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ConditionInfo)) {
            return false;
        }
        ConditionInfo conditionInfo = (ConditionInfo) other;
        return Intrinsics.c(this.conditionParams, conditionInfo.conditionParams) && Intrinsics.c(this.defaultCacheFileUrl, conditionInfo.defaultCacheFileUrl);
    }

    public final List<ConditionParam> getConditionParams() {
        return this.conditionParams;
    }

    public final String getDefaultCacheFileUrl() {
        return this.defaultCacheFileUrl;
    }

    /* JADX WARN: Code duplicated, block: B:101:0x0152 A[Catch: all -> 0x003e, TryCatch #0 {all -> 0x003e, blocks: (B:3:0x0003, B:8:0x000f, B:10:0x0015, B:14:0x0026, B:17:0x002d, B:19:0x0033, B:126:0x01d0, B:24:0x0041, B:25:0x0045, B:27:0x004b, B:29:0x0057, B:31:0x005d, B:33:0x0069, B:53:0x00b0, B:73:0x00f7, B:93:0x013e, B:113:0x0184, B:120:0x0197, B:116:0x018b, B:118:0x0192, B:96:0x0145, B:99:0x014c, B:101:0x0152, B:122:0x019c, B:104:0x015c, B:105:0x0160, B:107:0x0166, B:109:0x0172, B:111:0x0178, B:76:0x00fe, B:79:0x0105, B:81:0x010b, B:123:0x01a9, B:84:0x0116, B:85:0x011a, B:87:0x0120, B:89:0x012c, B:91:0x0132, B:56:0x00b7, B:59:0x00be, B:61:0x00c4, B:124:0x01b6, B:64:0x00cf, B:65:0x00d3, B:67:0x00d9, B:69:0x00e5, B:71:0x00eb, B:36:0x0070, B:39:0x0077, B:41:0x007d, B:125:0x01c3, B:44:0x0088, B:45:0x008c, B:47:0x0092, B:49:0x009e, B:51:0x00a4, B:127:0x01dd, B:6:0x0009), top: B:131:0x0003 }] */
    /* JADX WARN: Code duplicated, block: B:104:0x015c A[Catch: all -> 0x003e, TryCatch #0 {all -> 0x003e, blocks: (B:3:0x0003, B:8:0x000f, B:10:0x0015, B:14:0x0026, B:17:0x002d, B:19:0x0033, B:126:0x01d0, B:24:0x0041, B:25:0x0045, B:27:0x004b, B:29:0x0057, B:31:0x005d, B:33:0x0069, B:53:0x00b0, B:73:0x00f7, B:93:0x013e, B:113:0x0184, B:120:0x0197, B:116:0x018b, B:118:0x0192, B:96:0x0145, B:99:0x014c, B:101:0x0152, B:122:0x019c, B:104:0x015c, B:105:0x0160, B:107:0x0166, B:109:0x0172, B:111:0x0178, B:76:0x00fe, B:79:0x0105, B:81:0x010b, B:123:0x01a9, B:84:0x0116, B:85:0x011a, B:87:0x0120, B:89:0x012c, B:91:0x0132, B:56:0x00b7, B:59:0x00be, B:61:0x00c4, B:124:0x01b6, B:64:0x00cf, B:65:0x00d3, B:67:0x00d9, B:69:0x00e5, B:71:0x00eb, B:36:0x0070, B:39:0x0077, B:41:0x007d, B:125:0x01c3, B:44:0x0088, B:45:0x008c, B:47:0x0092, B:49:0x009e, B:51:0x00a4, B:127:0x01dd, B:6:0x0009), top: B:131:0x0003 }] */
    /* JADX WARN: Code duplicated, block: B:107:0x0166 A[Catch: all -> 0x003e, TryCatch #0 {all -> 0x003e, blocks: (B:3:0x0003, B:8:0x000f, B:10:0x0015, B:14:0x0026, B:17:0x002d, B:19:0x0033, B:126:0x01d0, B:24:0x0041, B:25:0x0045, B:27:0x004b, B:29:0x0057, B:31:0x005d, B:33:0x0069, B:53:0x00b0, B:73:0x00f7, B:93:0x013e, B:113:0x0184, B:120:0x0197, B:116:0x018b, B:118:0x0192, B:96:0x0145, B:99:0x014c, B:101:0x0152, B:122:0x019c, B:104:0x015c, B:105:0x0160, B:107:0x0166, B:109:0x0172, B:111:0x0178, B:76:0x00fe, B:79:0x0105, B:81:0x010b, B:123:0x01a9, B:84:0x0116, B:85:0x011a, B:87:0x0120, B:89:0x012c, B:91:0x0132, B:56:0x00b7, B:59:0x00be, B:61:0x00c4, B:124:0x01b6, B:64:0x00cf, B:65:0x00d3, B:67:0x00d9, B:69:0x00e5, B:71:0x00eb, B:36:0x0070, B:39:0x0077, B:41:0x007d, B:125:0x01c3, B:44:0x0088, B:45:0x008c, B:47:0x0092, B:49:0x009e, B:51:0x00a4, B:127:0x01dd, B:6:0x0009), top: B:131:0x0003 }] */
    /* JADX WARN: Code duplicated, block: B:109:0x0172 A[Catch: all -> 0x003e, TryCatch #0 {all -> 0x003e, blocks: (B:3:0x0003, B:8:0x000f, B:10:0x0015, B:14:0x0026, B:17:0x002d, B:19:0x0033, B:126:0x01d0, B:24:0x0041, B:25:0x0045, B:27:0x004b, B:29:0x0057, B:31:0x005d, B:33:0x0069, B:53:0x00b0, B:73:0x00f7, B:93:0x013e, B:113:0x0184, B:120:0x0197, B:116:0x018b, B:118:0x0192, B:96:0x0145, B:99:0x014c, B:101:0x0152, B:122:0x019c, B:104:0x015c, B:105:0x0160, B:107:0x0166, B:109:0x0172, B:111:0x0178, B:76:0x00fe, B:79:0x0105, B:81:0x010b, B:123:0x01a9, B:84:0x0116, B:85:0x011a, B:87:0x0120, B:89:0x012c, B:91:0x0132, B:56:0x00b7, B:59:0x00be, B:61:0x00c4, B:124:0x01b6, B:64:0x00cf, B:65:0x00d3, B:67:0x00d9, B:69:0x00e5, B:71:0x00eb, B:36:0x0070, B:39:0x0077, B:41:0x007d, B:125:0x01c3, B:44:0x0088, B:45:0x008c, B:47:0x0092, B:49:0x009e, B:51:0x00a4, B:127:0x01dd, B:6:0x0009), top: B:131:0x0003 }] */
    /* JADX WARN: Code duplicated, block: B:141:0x01c3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:143:0x01b6 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:145:0x01a9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:146:0x0144 A[ADDED_TO_REGION, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:148:0x0184 A[ADDED_TO_REGION, EDGE_INSN: B:148:0x0184->B:113:0x0184 BREAK  A[LOOP:0: B:8:0x000f->B:166:0x000f, LOOP_LABEL: LOOP:0: B:8:0x000f->B:166:0x000f], REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:151:0x00fd A[ADDED_TO_REGION, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:153:0x013e A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:156:0x00b6 A[ADDED_TO_REGION, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:158:0x00f7 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:163:0x00b0 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:44:0x0088 A[Catch: all -> 0x003e, TryCatch #0 {all -> 0x003e, blocks: (B:3:0x0003, B:8:0x000f, B:10:0x0015, B:14:0x0026, B:17:0x002d, B:19:0x0033, B:126:0x01d0, B:24:0x0041, B:25:0x0045, B:27:0x004b, B:29:0x0057, B:31:0x005d, B:33:0x0069, B:53:0x00b0, B:73:0x00f7, B:93:0x013e, B:113:0x0184, B:120:0x0197, B:116:0x018b, B:118:0x0192, B:96:0x0145, B:99:0x014c, B:101:0x0152, B:122:0x019c, B:104:0x015c, B:105:0x0160, B:107:0x0166, B:109:0x0172, B:111:0x0178, B:76:0x00fe, B:79:0x0105, B:81:0x010b, B:123:0x01a9, B:84:0x0116, B:85:0x011a, B:87:0x0120, B:89:0x012c, B:91:0x0132, B:56:0x00b7, B:59:0x00be, B:61:0x00c4, B:124:0x01b6, B:64:0x00cf, B:65:0x00d3, B:67:0x00d9, B:69:0x00e5, B:71:0x00eb, B:36:0x0070, B:39:0x0077, B:41:0x007d, B:125:0x01c3, B:44:0x0088, B:45:0x008c, B:47:0x0092, B:49:0x009e, B:51:0x00a4, B:127:0x01dd, B:6:0x0009), top: B:131:0x0003 }] */
    /* JADX WARN: Code duplicated, block: B:47:0x0092 A[Catch: all -> 0x003e, TryCatch #0 {all -> 0x003e, blocks: (B:3:0x0003, B:8:0x000f, B:10:0x0015, B:14:0x0026, B:17:0x002d, B:19:0x0033, B:126:0x01d0, B:24:0x0041, B:25:0x0045, B:27:0x004b, B:29:0x0057, B:31:0x005d, B:33:0x0069, B:53:0x00b0, B:73:0x00f7, B:93:0x013e, B:113:0x0184, B:120:0x0197, B:116:0x018b, B:118:0x0192, B:96:0x0145, B:99:0x014c, B:101:0x0152, B:122:0x019c, B:104:0x015c, B:105:0x0160, B:107:0x0166, B:109:0x0172, B:111:0x0178, B:76:0x00fe, B:79:0x0105, B:81:0x010b, B:123:0x01a9, B:84:0x0116, B:85:0x011a, B:87:0x0120, B:89:0x012c, B:91:0x0132, B:56:0x00b7, B:59:0x00be, B:61:0x00c4, B:124:0x01b6, B:64:0x00cf, B:65:0x00d3, B:67:0x00d9, B:69:0x00e5, B:71:0x00eb, B:36:0x0070, B:39:0x0077, B:41:0x007d, B:125:0x01c3, B:44:0x0088, B:45:0x008c, B:47:0x0092, B:49:0x009e, B:51:0x00a4, B:127:0x01dd, B:6:0x0009), top: B:131:0x0003 }] */
    /* JADX WARN: Code duplicated, block: B:49:0x009e A[Catch: all -> 0x003e, TryCatch #0 {all -> 0x003e, blocks: (B:3:0x0003, B:8:0x000f, B:10:0x0015, B:14:0x0026, B:17:0x002d, B:19:0x0033, B:126:0x01d0, B:24:0x0041, B:25:0x0045, B:27:0x004b, B:29:0x0057, B:31:0x005d, B:33:0x0069, B:53:0x00b0, B:73:0x00f7, B:93:0x013e, B:113:0x0184, B:120:0x0197, B:116:0x018b, B:118:0x0192, B:96:0x0145, B:99:0x014c, B:101:0x0152, B:122:0x019c, B:104:0x015c, B:105:0x0160, B:107:0x0166, B:109:0x0172, B:111:0x0178, B:76:0x00fe, B:79:0x0105, B:81:0x010b, B:123:0x01a9, B:84:0x0116, B:85:0x011a, B:87:0x0120, B:89:0x012c, B:91:0x0132, B:56:0x00b7, B:59:0x00be, B:61:0x00c4, B:124:0x01b6, B:64:0x00cf, B:65:0x00d3, B:67:0x00d9, B:69:0x00e5, B:71:0x00eb, B:36:0x0070, B:39:0x0077, B:41:0x007d, B:125:0x01c3, B:44:0x0088, B:45:0x008c, B:47:0x0092, B:49:0x009e, B:51:0x00a4, B:127:0x01dd, B:6:0x0009), top: B:131:0x0003 }] */
    /* JADX WARN: Code duplicated, block: B:56:0x00b7 A[Catch: all -> 0x003e, TryCatch #0 {all -> 0x003e, blocks: (B:3:0x0003, B:8:0x000f, B:10:0x0015, B:14:0x0026, B:17:0x002d, B:19:0x0033, B:126:0x01d0, B:24:0x0041, B:25:0x0045, B:27:0x004b, B:29:0x0057, B:31:0x005d, B:33:0x0069, B:53:0x00b0, B:73:0x00f7, B:93:0x013e, B:113:0x0184, B:120:0x0197, B:116:0x018b, B:118:0x0192, B:96:0x0145, B:99:0x014c, B:101:0x0152, B:122:0x019c, B:104:0x015c, B:105:0x0160, B:107:0x0166, B:109:0x0172, B:111:0x0178, B:76:0x00fe, B:79:0x0105, B:81:0x010b, B:123:0x01a9, B:84:0x0116, B:85:0x011a, B:87:0x0120, B:89:0x012c, B:91:0x0132, B:56:0x00b7, B:59:0x00be, B:61:0x00c4, B:124:0x01b6, B:64:0x00cf, B:65:0x00d3, B:67:0x00d9, B:69:0x00e5, B:71:0x00eb, B:36:0x0070, B:39:0x0077, B:41:0x007d, B:125:0x01c3, B:44:0x0088, B:45:0x008c, B:47:0x0092, B:49:0x009e, B:51:0x00a4, B:127:0x01dd, B:6:0x0009), top: B:131:0x0003 }] */
    /* JADX WARN: Code duplicated, block: B:61:0x00c4 A[Catch: all -> 0x003e, TryCatch #0 {all -> 0x003e, blocks: (B:3:0x0003, B:8:0x000f, B:10:0x0015, B:14:0x0026, B:17:0x002d, B:19:0x0033, B:126:0x01d0, B:24:0x0041, B:25:0x0045, B:27:0x004b, B:29:0x0057, B:31:0x005d, B:33:0x0069, B:53:0x00b0, B:73:0x00f7, B:93:0x013e, B:113:0x0184, B:120:0x0197, B:116:0x018b, B:118:0x0192, B:96:0x0145, B:99:0x014c, B:101:0x0152, B:122:0x019c, B:104:0x015c, B:105:0x0160, B:107:0x0166, B:109:0x0172, B:111:0x0178, B:76:0x00fe, B:79:0x0105, B:81:0x010b, B:123:0x01a9, B:84:0x0116, B:85:0x011a, B:87:0x0120, B:89:0x012c, B:91:0x0132, B:56:0x00b7, B:59:0x00be, B:61:0x00c4, B:124:0x01b6, B:64:0x00cf, B:65:0x00d3, B:67:0x00d9, B:69:0x00e5, B:71:0x00eb, B:36:0x0070, B:39:0x0077, B:41:0x007d, B:125:0x01c3, B:44:0x0088, B:45:0x008c, B:47:0x0092, B:49:0x009e, B:51:0x00a4, B:127:0x01dd, B:6:0x0009), top: B:131:0x0003 }] */
    /* JADX WARN: Code duplicated, block: B:64:0x00cf A[Catch: all -> 0x003e, TryCatch #0 {all -> 0x003e, blocks: (B:3:0x0003, B:8:0x000f, B:10:0x0015, B:14:0x0026, B:17:0x002d, B:19:0x0033, B:126:0x01d0, B:24:0x0041, B:25:0x0045, B:27:0x004b, B:29:0x0057, B:31:0x005d, B:33:0x0069, B:53:0x00b0, B:73:0x00f7, B:93:0x013e, B:113:0x0184, B:120:0x0197, B:116:0x018b, B:118:0x0192, B:96:0x0145, B:99:0x014c, B:101:0x0152, B:122:0x019c, B:104:0x015c, B:105:0x0160, B:107:0x0166, B:109:0x0172, B:111:0x0178, B:76:0x00fe, B:79:0x0105, B:81:0x010b, B:123:0x01a9, B:84:0x0116, B:85:0x011a, B:87:0x0120, B:89:0x012c, B:91:0x0132, B:56:0x00b7, B:59:0x00be, B:61:0x00c4, B:124:0x01b6, B:64:0x00cf, B:65:0x00d3, B:67:0x00d9, B:69:0x00e5, B:71:0x00eb, B:36:0x0070, B:39:0x0077, B:41:0x007d, B:125:0x01c3, B:44:0x0088, B:45:0x008c, B:47:0x0092, B:49:0x009e, B:51:0x00a4, B:127:0x01dd, B:6:0x0009), top: B:131:0x0003 }] */
    /* JADX WARN: Code duplicated, block: B:67:0x00d9 A[Catch: all -> 0x003e, TryCatch #0 {all -> 0x003e, blocks: (B:3:0x0003, B:8:0x000f, B:10:0x0015, B:14:0x0026, B:17:0x002d, B:19:0x0033, B:126:0x01d0, B:24:0x0041, B:25:0x0045, B:27:0x004b, B:29:0x0057, B:31:0x005d, B:33:0x0069, B:53:0x00b0, B:73:0x00f7, B:93:0x013e, B:113:0x0184, B:120:0x0197, B:116:0x018b, B:118:0x0192, B:96:0x0145, B:99:0x014c, B:101:0x0152, B:122:0x019c, B:104:0x015c, B:105:0x0160, B:107:0x0166, B:109:0x0172, B:111:0x0178, B:76:0x00fe, B:79:0x0105, B:81:0x010b, B:123:0x01a9, B:84:0x0116, B:85:0x011a, B:87:0x0120, B:89:0x012c, B:91:0x0132, B:56:0x00b7, B:59:0x00be, B:61:0x00c4, B:124:0x01b6, B:64:0x00cf, B:65:0x00d3, B:67:0x00d9, B:69:0x00e5, B:71:0x00eb, B:36:0x0070, B:39:0x0077, B:41:0x007d, B:125:0x01c3, B:44:0x0088, B:45:0x008c, B:47:0x0092, B:49:0x009e, B:51:0x00a4, B:127:0x01dd, B:6:0x0009), top: B:131:0x0003 }] */
    /* JADX WARN: Code duplicated, block: B:69:0x00e5 A[Catch: all -> 0x003e, TryCatch #0 {all -> 0x003e, blocks: (B:3:0x0003, B:8:0x000f, B:10:0x0015, B:14:0x0026, B:17:0x002d, B:19:0x0033, B:126:0x01d0, B:24:0x0041, B:25:0x0045, B:27:0x004b, B:29:0x0057, B:31:0x005d, B:33:0x0069, B:53:0x00b0, B:73:0x00f7, B:93:0x013e, B:113:0x0184, B:120:0x0197, B:116:0x018b, B:118:0x0192, B:96:0x0145, B:99:0x014c, B:101:0x0152, B:122:0x019c, B:104:0x015c, B:105:0x0160, B:107:0x0166, B:109:0x0172, B:111:0x0178, B:76:0x00fe, B:79:0x0105, B:81:0x010b, B:123:0x01a9, B:84:0x0116, B:85:0x011a, B:87:0x0120, B:89:0x012c, B:91:0x0132, B:56:0x00b7, B:59:0x00be, B:61:0x00c4, B:124:0x01b6, B:64:0x00cf, B:65:0x00d3, B:67:0x00d9, B:69:0x00e5, B:71:0x00eb, B:36:0x0070, B:39:0x0077, B:41:0x007d, B:125:0x01c3, B:44:0x0088, B:45:0x008c, B:47:0x0092, B:49:0x009e, B:51:0x00a4, B:127:0x01dd, B:6:0x0009), top: B:131:0x0003 }] */
    /* JADX WARN: Code duplicated, block: B:76:0x00fe A[Catch: all -> 0x003e, TryCatch #0 {all -> 0x003e, blocks: (B:3:0x0003, B:8:0x000f, B:10:0x0015, B:14:0x0026, B:17:0x002d, B:19:0x0033, B:126:0x01d0, B:24:0x0041, B:25:0x0045, B:27:0x004b, B:29:0x0057, B:31:0x005d, B:33:0x0069, B:53:0x00b0, B:73:0x00f7, B:93:0x013e, B:113:0x0184, B:120:0x0197, B:116:0x018b, B:118:0x0192, B:96:0x0145, B:99:0x014c, B:101:0x0152, B:122:0x019c, B:104:0x015c, B:105:0x0160, B:107:0x0166, B:109:0x0172, B:111:0x0178, B:76:0x00fe, B:79:0x0105, B:81:0x010b, B:123:0x01a9, B:84:0x0116, B:85:0x011a, B:87:0x0120, B:89:0x012c, B:91:0x0132, B:56:0x00b7, B:59:0x00be, B:61:0x00c4, B:124:0x01b6, B:64:0x00cf, B:65:0x00d3, B:67:0x00d9, B:69:0x00e5, B:71:0x00eb, B:36:0x0070, B:39:0x0077, B:41:0x007d, B:125:0x01c3, B:44:0x0088, B:45:0x008c, B:47:0x0092, B:49:0x009e, B:51:0x00a4, B:127:0x01dd, B:6:0x0009), top: B:131:0x0003 }] */
    /* JADX WARN: Code duplicated, block: B:81:0x010b A[Catch: all -> 0x003e, TryCatch #0 {all -> 0x003e, blocks: (B:3:0x0003, B:8:0x000f, B:10:0x0015, B:14:0x0026, B:17:0x002d, B:19:0x0033, B:126:0x01d0, B:24:0x0041, B:25:0x0045, B:27:0x004b, B:29:0x0057, B:31:0x005d, B:33:0x0069, B:53:0x00b0, B:73:0x00f7, B:93:0x013e, B:113:0x0184, B:120:0x0197, B:116:0x018b, B:118:0x0192, B:96:0x0145, B:99:0x014c, B:101:0x0152, B:122:0x019c, B:104:0x015c, B:105:0x0160, B:107:0x0166, B:109:0x0172, B:111:0x0178, B:76:0x00fe, B:79:0x0105, B:81:0x010b, B:123:0x01a9, B:84:0x0116, B:85:0x011a, B:87:0x0120, B:89:0x012c, B:91:0x0132, B:56:0x00b7, B:59:0x00be, B:61:0x00c4, B:124:0x01b6, B:64:0x00cf, B:65:0x00d3, B:67:0x00d9, B:69:0x00e5, B:71:0x00eb, B:36:0x0070, B:39:0x0077, B:41:0x007d, B:125:0x01c3, B:44:0x0088, B:45:0x008c, B:47:0x0092, B:49:0x009e, B:51:0x00a4, B:127:0x01dd, B:6:0x0009), top: B:131:0x0003 }] */
    /* JADX WARN: Code duplicated, block: B:84:0x0116 A[Catch: all -> 0x003e, TryCatch #0 {all -> 0x003e, blocks: (B:3:0x0003, B:8:0x000f, B:10:0x0015, B:14:0x0026, B:17:0x002d, B:19:0x0033, B:126:0x01d0, B:24:0x0041, B:25:0x0045, B:27:0x004b, B:29:0x0057, B:31:0x005d, B:33:0x0069, B:53:0x00b0, B:73:0x00f7, B:93:0x013e, B:113:0x0184, B:120:0x0197, B:116:0x018b, B:118:0x0192, B:96:0x0145, B:99:0x014c, B:101:0x0152, B:122:0x019c, B:104:0x015c, B:105:0x0160, B:107:0x0166, B:109:0x0172, B:111:0x0178, B:76:0x00fe, B:79:0x0105, B:81:0x010b, B:123:0x01a9, B:84:0x0116, B:85:0x011a, B:87:0x0120, B:89:0x012c, B:91:0x0132, B:56:0x00b7, B:59:0x00be, B:61:0x00c4, B:124:0x01b6, B:64:0x00cf, B:65:0x00d3, B:67:0x00d9, B:69:0x00e5, B:71:0x00eb, B:36:0x0070, B:39:0x0077, B:41:0x007d, B:125:0x01c3, B:44:0x0088, B:45:0x008c, B:47:0x0092, B:49:0x009e, B:51:0x00a4, B:127:0x01dd, B:6:0x0009), top: B:131:0x0003 }] */
    /* JADX WARN: Code duplicated, block: B:87:0x0120 A[Catch: all -> 0x003e, TryCatch #0 {all -> 0x003e, blocks: (B:3:0x0003, B:8:0x000f, B:10:0x0015, B:14:0x0026, B:17:0x002d, B:19:0x0033, B:126:0x01d0, B:24:0x0041, B:25:0x0045, B:27:0x004b, B:29:0x0057, B:31:0x005d, B:33:0x0069, B:53:0x00b0, B:73:0x00f7, B:93:0x013e, B:113:0x0184, B:120:0x0197, B:116:0x018b, B:118:0x0192, B:96:0x0145, B:99:0x014c, B:101:0x0152, B:122:0x019c, B:104:0x015c, B:105:0x0160, B:107:0x0166, B:109:0x0172, B:111:0x0178, B:76:0x00fe, B:79:0x0105, B:81:0x010b, B:123:0x01a9, B:84:0x0116, B:85:0x011a, B:87:0x0120, B:89:0x012c, B:91:0x0132, B:56:0x00b7, B:59:0x00be, B:61:0x00c4, B:124:0x01b6, B:64:0x00cf, B:65:0x00d3, B:67:0x00d9, B:69:0x00e5, B:71:0x00eb, B:36:0x0070, B:39:0x0077, B:41:0x007d, B:125:0x01c3, B:44:0x0088, B:45:0x008c, B:47:0x0092, B:49:0x009e, B:51:0x00a4, B:127:0x01dd, B:6:0x0009), top: B:131:0x0003 }] */
    /* JADX WARN: Code duplicated, block: B:89:0x012c A[Catch: all -> 0x003e, TryCatch #0 {all -> 0x003e, blocks: (B:3:0x0003, B:8:0x000f, B:10:0x0015, B:14:0x0026, B:17:0x002d, B:19:0x0033, B:126:0x01d0, B:24:0x0041, B:25:0x0045, B:27:0x004b, B:29:0x0057, B:31:0x005d, B:33:0x0069, B:53:0x00b0, B:73:0x00f7, B:93:0x013e, B:113:0x0184, B:120:0x0197, B:116:0x018b, B:118:0x0192, B:96:0x0145, B:99:0x014c, B:101:0x0152, B:122:0x019c, B:104:0x015c, B:105:0x0160, B:107:0x0166, B:109:0x0172, B:111:0x0178, B:76:0x00fe, B:79:0x0105, B:81:0x010b, B:123:0x01a9, B:84:0x0116, B:85:0x011a, B:87:0x0120, B:89:0x012c, B:91:0x0132, B:56:0x00b7, B:59:0x00be, B:61:0x00c4, B:124:0x01b6, B:64:0x00cf, B:65:0x00d3, B:67:0x00d9, B:69:0x00e5, B:71:0x00eb, B:36:0x0070, B:39:0x0077, B:41:0x007d, B:125:0x01c3, B:44:0x0088, B:45:0x008c, B:47:0x0092, B:49:0x009e, B:51:0x00a4, B:127:0x01dd, B:6:0x0009), top: B:131:0x0003 }] */
    /* JADX WARN: Code duplicated, block: B:96:0x0145 A[Catch: all -> 0x003e, TryCatch #0 {all -> 0x003e, blocks: (B:3:0x0003, B:8:0x000f, B:10:0x0015, B:14:0x0026, B:17:0x002d, B:19:0x0033, B:126:0x01d0, B:24:0x0041, B:25:0x0045, B:27:0x004b, B:29:0x0057, B:31:0x005d, B:33:0x0069, B:53:0x00b0, B:73:0x00f7, B:93:0x013e, B:113:0x0184, B:120:0x0197, B:116:0x018b, B:118:0x0192, B:96:0x0145, B:99:0x014c, B:101:0x0152, B:122:0x019c, B:104:0x015c, B:105:0x0160, B:107:0x0166, B:109:0x0172, B:111:0x0178, B:76:0x00fe, B:79:0x0105, B:81:0x010b, B:123:0x01a9, B:84:0x0116, B:85:0x011a, B:87:0x0120, B:89:0x012c, B:91:0x0132, B:56:0x00b7, B:59:0x00be, B:61:0x00c4, B:124:0x01b6, B:64:0x00cf, B:65:0x00d3, B:67:0x00d9, B:69:0x00e5, B:71:0x00eb, B:36:0x0070, B:39:0x0077, B:41:0x007d, B:125:0x01c3, B:44:0x0088, B:45:0x008c, B:47:0x0092, B:49:0x009e, B:51:0x00a4, B:127:0x01dd, B:6:0x0009), top: B:131:0x0003 }] */
    public final String getMatchCacheUrl() {
        ConditionParam next;
        ConditionParamX conditionParam;
        ConditionParamX conditionParam2;
        ConditionParamX conditionParam3;
        ConditionParamX conditionParam4;
        List<String> phoneLanguage;
        List<String> list;
        List<String> phoneBrand;
        List<String> list2;
        Iterator<T> it;
        String str;
        List<String> phoneModel;
        List<String> list3;
        Iterator<T> it2;
        String str2;
        List<String> osVersion;
        List<String> list4;
        Iterator<T> it3;
        String str3;
        List<String> mcc;
        try {
            List<ConditionParam> list5 = this.conditionParams;
            Iterator<ConditionParam> it4 = list5 == null ? null : list5.iterator();
            if (it4 != null) {
                loop0: while (true) {
                    if (it4.hasNext()) {
                        next = it4.next();
                        ConditionParamX conditionParam5 = next.getConditionParam();
                        if (conditionParam5 == null || (mcc = conditionParam5.getMcc()) == null) {
                            conditionParam = next.getConditionParam();
                            if (conditionParam == null) {
                                list4 = osVersion;
                                if (list4 instanceof Collection) {
                                    it3 = list4.iterator();
                                    while (true) {
                                        if (it3.hasNext()) {
                                            str3 = (String) it3.next();
                                            if (!Intrinsics.c(str3, "")) {
                                            }
                                        } else {
                                            XLogUtil.INSTANCE.getLog().i(XLogUtil.TAG, "CloudConfigResponse --> osVersion不匹配");
                                        }
                                    }
                                } else {
                                    it3 = list4.iterator();
                                    while (true) {
                                        if (it3.hasNext()) {
                                            str3 = (String) it3.next();
                                            if (!Intrinsics.c(str3, "")) {
                                            }
                                        } else {
                                            XLogUtil.INSTANCE.getLog().i(XLogUtil.TAG, "CloudConfigResponse --> osVersion不匹配");
                                        }
                                    }
                                }
                            }
                            conditionParam2 = next.getConditionParam();
                            if (conditionParam2 == null) {
                                list3 = phoneModel;
                                if (list3 instanceof Collection) {
                                    it2 = list3.iterator();
                                    while (true) {
                                        if (it2.hasNext()) {
                                            str2 = (String) it2.next();
                                            if (!Intrinsics.c(str2, "")) {
                                            }
                                        } else {
                                            XLogUtil.INSTANCE.getLog().i(XLogUtil.TAG, "CloudConfigResponse --> phoneModel不匹配");
                                        }
                                    }
                                } else {
                                    it2 = list3.iterator();
                                    while (true) {
                                        if (it2.hasNext()) {
                                            str2 = (String) it2.next();
                                            if (!Intrinsics.c(str2, "")) {
                                            }
                                        } else {
                                            XLogUtil.INSTANCE.getLog().i(XLogUtil.TAG, "CloudConfigResponse --> phoneModel不匹配");
                                        }
                                    }
                                }
                            }
                            conditionParam3 = next.getConditionParam();
                            if (conditionParam3 == null) {
                                list2 = phoneBrand;
                                if (list2 instanceof Collection) {
                                    it = list2.iterator();
                                    while (true) {
                                        if (it.hasNext()) {
                                            str = (String) it.next();
                                            if (!Intrinsics.c(str, "")) {
                                            }
                                        } else {
                                            XLogUtil.INSTANCE.getLog().i(XLogUtil.TAG, "CloudConfigResponse --> phoneBrand不匹配");
                                        }
                                    }
                                } else {
                                    it = list2.iterator();
                                    while (true) {
                                        if (it.hasNext()) {
                                            str = (String) it.next();
                                            if (!Intrinsics.c(str, "")) {
                                            }
                                        } else {
                                            XLogUtil.INSTANCE.getLog().i(XLogUtil.TAG, "CloudConfigResponse --> phoneBrand不匹配");
                                        }
                                    }
                                }
                            }
                            conditionParam4 = next.getConditionParam();
                            if (conditionParam4 != null) {
                                break;
                                break;
                            }
                            list = phoneLanguage;
                            if (list instanceof Collection) {
                                for (String str4 : list) {
                                    if (Intrinsics.c(str4, "")) {
                                        break loop0;
                                        break loop0;
                                    }
                                    break loop0;
                                    break loop0;
                                }
                                XLogUtil.INSTANCE.getLog().i(XLogUtil.TAG, "CloudConfigResponse --> phoneLanguage不匹配");
                            } else {
                                while (r4.hasNext()) {
                                    if (Intrinsics.c(str4, "")) {
                                        break loop0;
                                        break loop0;
                                    }
                                    break loop0;
                                    break loop0;
                                }
                                XLogUtil.INSTANCE.getLog().i(XLogUtil.TAG, "CloudConfigResponse --> phoneLanguage不匹配");
                            }
                        } else {
                            List<String> list6 = mcc;
                            if (!(list6 instanceof Collection) || !list6.isEmpty()) {
                                Iterator<T> it5 = list6.iterator();
                                while (true) {
                                    if (it5.hasNext()) {
                                        String str5 = (String) it5.next();
                                        if (Intrinsics.c(str5, "") || Intrinsics.c(str5, "*") || Intrinsics.c(str5, CommonUtils.INSTANCE.getMcc())) {
                                            conditionParam = next.getConditionParam();
                                            if (conditionParam == null || (osVersion = conditionParam.getOsVersion()) == null) {
                                                conditionParam2 = next.getConditionParam();
                                                if (conditionParam2 == null) {
                                                    list3 = phoneModel;
                                                    if (list3 instanceof Collection) {
                                                        it2 = list3.iterator();
                                                        while (true) {
                                                            if (it2.hasNext()) {
                                                                str2 = (String) it2.next();
                                                                if (!Intrinsics.c(str2, "")) {
                                                                }
                                                            } else {
                                                                XLogUtil.INSTANCE.getLog().i(XLogUtil.TAG, "CloudConfigResponse --> phoneModel不匹配");
                                                            }
                                                        }
                                                    } else {
                                                        it2 = list3.iterator();
                                                        while (true) {
                                                            if (it2.hasNext()) {
                                                                str2 = (String) it2.next();
                                                                if (!Intrinsics.c(str2, "")) {
                                                                }
                                                            } else {
                                                                XLogUtil.INSTANCE.getLog().i(XLogUtil.TAG, "CloudConfigResponse --> phoneModel不匹配");
                                                            }
                                                        }
                                                    }
                                                }
                                                conditionParam3 = next.getConditionParam();
                                                if (conditionParam3 == null) {
                                                    list2 = phoneBrand;
                                                    if (list2 instanceof Collection) {
                                                        it = list2.iterator();
                                                        while (true) {
                                                            if (it.hasNext()) {
                                                                str = (String) it.next();
                                                                if (!Intrinsics.c(str, "")) {
                                                                }
                                                            } else {
                                                                XLogUtil.INSTANCE.getLog().i(XLogUtil.TAG, "CloudConfigResponse --> phoneBrand不匹配");
                                                            }
                                                        }
                                                    } else {
                                                        it = list2.iterator();
                                                        while (true) {
                                                            if (it.hasNext()) {
                                                                str = (String) it.next();
                                                                if (!Intrinsics.c(str, "")) {
                                                                }
                                                            } else {
                                                                XLogUtil.INSTANCE.getLog().i(XLogUtil.TAG, "CloudConfigResponse --> phoneBrand不匹配");
                                                            }
                                                        }
                                                    }
                                                }
                                                conditionParam4 = next.getConditionParam();
                                                if (conditionParam4 != null) {
                                                    break;
                                                    break;
                                                }
                                                list = phoneLanguage;
                                                if (list instanceof Collection) {
                                                    while (r4.hasNext()) {
                                                        if (Intrinsics.c(str4, "")) {
                                                            break loop0;
                                                            break loop0;
                                                        }
                                                        break loop0;
                                                        break loop0;
                                                    }
                                                    XLogUtil.INSTANCE.getLog().i(XLogUtil.TAG, "CloudConfigResponse --> phoneLanguage不匹配");
                                                } else {
                                                    while (r4.hasNext()) {
                                                        if (Intrinsics.c(str4, "")) {
                                                            break loop0;
                                                            break loop0;
                                                        }
                                                        break loop0;
                                                        break loop0;
                                                    }
                                                    XLogUtil.INSTANCE.getLog().i(XLogUtil.TAG, "CloudConfigResponse --> phoneLanguage不匹配");
                                                }
                                            } else {
                                                list4 = osVersion;
                                                if ((list4 instanceof Collection) || !list4.isEmpty()) {
                                                    it3 = list4.iterator();
                                                    while (true) {
                                                        if (it3.hasNext()) {
                                                            str3 = (String) it3.next();
                                                            if (!Intrinsics.c(str3, "") || Intrinsics.c(str3, "*") || Intrinsics.c(str3, CommonUtils.INSTANCE.getVersion())) {
                                                                conditionParam2 = next.getConditionParam();
                                                                if (conditionParam2 == null && (phoneModel = conditionParam2.getPhoneModel()) != null) {
                                                                    list3 = phoneModel;
                                                                    if ((list3 instanceof Collection) || !list3.isEmpty()) {
                                                                        it2 = list3.iterator();
                                                                        while (true) {
                                                                            if (it2.hasNext()) {
                                                                                str2 = (String) it2.next();
                                                                                if (!Intrinsics.c(str2, "") || Intrinsics.c(str2, "*") || Intrinsics.c(str2, CommonUtils.INSTANCE.getModel())) {
                                                                                    conditionParam3 = next.getConditionParam();
                                                                                    if (conditionParam3 == null || (phoneBrand = conditionParam3.getPhoneBrand()) == null) {
                                                                                        conditionParam4 = next.getConditionParam();
                                                                                        if (conditionParam4 != null) {
                                                                                            break;
                                                                                        }
                                                                                        list = phoneLanguage;
                                                                                        if (list instanceof Collection) {
                                                                                            while (r4.hasNext()) {
                                                                                                if (Intrinsics.c(str4, "")) {
                                                                                                    break loop0;
                                                                                                }
                                                                                                break loop0;
                                                                                            }
                                                                                            XLogUtil.INSTANCE.getLog().i(XLogUtil.TAG, "CloudConfigResponse --> phoneLanguage不匹配");
                                                                                        } else {
                                                                                            while (r4.hasNext()) {
                                                                                                if (Intrinsics.c(str4, "")) {
                                                                                                    break loop0;
                                                                                                    break loop0;
                                                                                                }
                                                                                                break loop0;
                                                                                                break loop0;
                                                                                            }
                                                                                            XLogUtil.INSTANCE.getLog().i(XLogUtil.TAG, "CloudConfigResponse --> phoneLanguage不匹配");
                                                                                        }
                                                                                    } else {
                                                                                        list2 = phoneBrand;
                                                                                        if ((list2 instanceof Collection) || !list2.isEmpty()) {
                                                                                            it = list2.iterator();
                                                                                            while (true) {
                                                                                                if (it.hasNext()) {
                                                                                                    str = (String) it.next();
                                                                                                    if (!Intrinsics.c(str, "") || Intrinsics.c(str, "*") || Intrinsics.c(str, CommonUtils.INSTANCE.getBrand())) {
                                                                                                        conditionParam4 = next.getConditionParam();
                                                                                                        if (conditionParam4 != null || (phoneLanguage = conditionParam4.getPhoneLanguage()) == null) {
                                                                                                            break;
                                                                                                            break;
                                                                                                        }
                                                                                                        list = phoneLanguage;
                                                                                                        if ((list instanceof Collection) || !list.isEmpty()) {
                                                                                                            while (r4.hasNext()) {
                                                                                                                if (Intrinsics.c(str4, "") || Intrinsics.c(str4, "*") || Intrinsics.c(str4, CommonUtils.INSTANCE.getSystemLanguage())) {
                                                                                                                    break loop0;
                                                                                                                }
                                                                                                            }
                                                                                                        }
                                                                                                        XLogUtil.INSTANCE.getLog().i(XLogUtil.TAG, "CloudConfigResponse --> phoneLanguage不匹配");
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                        XLogUtil.INSTANCE.getLog().i(XLogUtil.TAG, "CloudConfigResponse --> phoneBrand不匹配");
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    XLogUtil.INSTANCE.getLog().i(XLogUtil.TAG, "CloudConfigResponse --> phoneModel不匹配");
                                                                } else {
                                                                    conditionParam3 = next.getConditionParam();
                                                                    if (conditionParam3 == null) {
                                                                        list2 = phoneBrand;
                                                                        if (list2 instanceof Collection) {
                                                                            it = list2.iterator();
                                                                            while (true) {
                                                                                if (it.hasNext()) {
                                                                                    str = (String) it.next();
                                                                                    if (!Intrinsics.c(str, "")) {
                                                                                    }
                                                                                } else {
                                                                                    XLogUtil.INSTANCE.getLog().i(XLogUtil.TAG, "CloudConfigResponse --> phoneBrand不匹配");
                                                                                }
                                                                            }
                                                                        } else {
                                                                            it = list2.iterator();
                                                                            while (true) {
                                                                                if (it.hasNext()) {
                                                                                    str = (String) it.next();
                                                                                    if (!Intrinsics.c(str, "")) {
                                                                                    }
                                                                                } else {
                                                                                    XLogUtil.INSTANCE.getLog().i(XLogUtil.TAG, "CloudConfigResponse --> phoneBrand不匹配");
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    conditionParam4 = next.getConditionParam();
                                                                    if (conditionParam4 != null) {
                                                                        break;
                                                                        break;
                                                                    }
                                                                    list = phoneLanguage;
                                                                    if (list instanceof Collection) {
                                                                        while (r4.hasNext()) {
                                                                            if (Intrinsics.c(str4, "")) {
                                                                                break loop0;
                                                                                break loop0;
                                                                            }
                                                                            break loop0;
                                                                            break loop0;
                                                                        }
                                                                        XLogUtil.INSTANCE.getLog().i(XLogUtil.TAG, "CloudConfigResponse --> phoneLanguage不匹配");
                                                                    } else {
                                                                        while (r4.hasNext()) {
                                                                            if (Intrinsics.c(str4, "")) {
                                                                                break loop0;
                                                                                break loop0;
                                                                            }
                                                                            break loop0;
                                                                            break loop0;
                                                                        }
                                                                        XLogUtil.INSTANCE.getLog().i(XLogUtil.TAG, "CloudConfigResponse --> phoneLanguage不匹配");
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                                XLogUtil.INSTANCE.getLog().i(XLogUtil.TAG, "CloudConfigResponse --> osVersion不匹配");
                                            }
                                        }
                                    }
                                }
                            }
                            XLogUtil.INSTANCE.getLog().i(XLogUtil.TAG, "CloudConfigResponse --> mcc不匹配");
                        }
                    }
                }
                ShuntInfo shuntInfo = next.getShuntInfo();
                if (shuntInfo != null && shuntInfo.isShuntOpen()) {
                    this._conditionParam = next;
                    return CommonUtils.SHUNT_OPEN_FLAG;
                }
                return next.getCacheFileUrl();
            }
            return this.defaultCacheFileUrl;
        } catch (Throwable th2) {
            XLogUtil.INSTANCE.getLog().i(XLogUtil.TAG, Log.getStackTraceString(th2));
            return null;
        }
    }

    public final ConditionParam get_conditionParam() {
        return this._conditionParam;
    }

    public int hashCode() {
        List<ConditionParam> list = this.conditionParams;
        int iHashCode = (list == null ? 0 : list.hashCode()) * 31;
        String str = this.defaultCacheFileUrl;
        return iHashCode + (str != null ? str.hashCode() : 0);
    }

    public final void set_conditionParam(ConditionParam conditionParam) {
        this._conditionParam = conditionParam;
    }

    public String toString() {
        return "ConditionInfo(conditionParams=" + this.conditionParams + ", defaultCacheFileUrl=" + ((Object) this.defaultCacheFileUrl) + ')';
    }
}
