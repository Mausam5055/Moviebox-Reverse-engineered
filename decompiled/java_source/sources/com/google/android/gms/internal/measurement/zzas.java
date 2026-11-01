package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes4.dex */
public final class zzas implements zzaq, Iterable<zzaq> {
    private final String zza;

    public zzas(String str) {
        if (str == null) {
            throw new IllegalArgumentException("StringValue cannot be null.");
        }
        this.zza = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzas) {
            return this.zza.equals(((zzas) obj).zza);
        }
        return false;
    }

    public final int hashCode() {
        return this.zza.hashCode();
    }

    @Override // java.lang.Iterable
    public final Iterator<zzaq> iterator() {
        return new zzau(this);
    }

    public final String toString() {
        return "\"" + this.zza + "\"";
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:101:0x016c  */
    /* JADX WARN: Code duplicated, block: B:102:0x016e  */
    /* JADX WARN: Code duplicated, block: B:105:0x017e  */
    /* JADX WARN: Code duplicated, block: B:106:0x0180  */
    /* JADX WARN: Code duplicated, block: B:109:0x0190  */
    /* JADX WARN: Code duplicated, block: B:110:0x0192  */
    /* JADX WARN: Code duplicated, block: B:113:0x01a2  */
    /* JADX WARN: Code duplicated, block: B:115:0x01a6  */
    /* JADX WARN: Code duplicated, block: B:117:0x01ae  */
    /* JADX WARN: Code duplicated, block: B:119:0x01be  */
    /* JADX WARN: Code duplicated, block: B:120:0x01c7  */
    /* JADX WARN: Code duplicated, block: B:123:0x01df  */
    /* JADX WARN: Code duplicated, block: B:124:0x01e2  */
    /* JADX WARN: Code duplicated, block: B:127:0x0209  */
    /* JADX WARN: Code duplicated, block: B:129:0x021f  */
    /* JADX WARN: Code duplicated, block: B:131:0x0235  */
    /* JADX WARN: Code duplicated, block: B:134:0x0247 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:135:0x0248  */
    /* JADX WARN: Code duplicated, block: B:137:0x024c  */
    /* JADX WARN: Code duplicated, block: B:138:0x0272  */
    /* JADX WARN: Code duplicated, block: B:141:0x029c  */
    /* JADX WARN: Code duplicated, block: B:143:0x02ae  */
    /* JADX WARN: Code duplicated, block: B:144:0x02c7  */
    /* JADX WARN: Code duplicated, block: B:147:0x02cf  */
    /* JADX WARN: Code duplicated, block: B:149:0x02e8  */
    /* JADX WARN: Code duplicated, block: B:152:0x0317  */
    /* JADX WARN: Code duplicated, block: B:154:0x0329  */
    /* JADX WARN: Code duplicated, block: B:156:0x0335  */
    /* JADX WARN: Code duplicated, block: B:158:0x0341  */
    /* JADX WARN: Code duplicated, block: B:159:0x0346  */
    /* JADX WARN: Code duplicated, block: B:161:0x035b  */
    /* JADX WARN: Code duplicated, block: B:162:0x0372  */
    /* JADX WARN: Code duplicated, block: B:165:0x037b  */
    /* JADX WARN: Code duplicated, block: B:167:0x0381  */
    /* JADX WARN: Code duplicated, block: B:174:0x03aa  */
    /* JADX WARN: Code duplicated, block: B:177:0x03b1  */
    /* JADX WARN: Code duplicated, block: B:179:0x03b5 A[LOOP:0: B:178:0x03b3->B:179:0x03b5, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:182:0x03c8  */
    /* JADX WARN: Code duplicated, block: B:184:0x03da  */
    /* JADX WARN: Code duplicated, block: B:185:0x03ee  */
    /* JADX WARN: Code duplicated, block: B:188:0x03fa  */
    /* JADX WARN: Code duplicated, block: B:189:0x0405  */
    /* JADX WARN: Code duplicated, block: B:192:0x0416  */
    /* JADX WARN: Code duplicated, block: B:193:0x0429  */
    /* JADX WARN: Code duplicated, block: B:196:0x0438  */
    /* JADX WARN: Code duplicated, block: B:197:0x0443  */
    /* JADX WARN: Code duplicated, block: B:200:0x045e  */
    /* JADX WARN: Code duplicated, block: B:202:0x0471  */
    /* JADX WARN: Code duplicated, block: B:203:0x0474  */
    /* JADX WARN: Code duplicated, block: B:206:0x0491  */
    /* JADX WARN: Code duplicated, block: B:208:0x04a6  */
    /* JADX WARN: Code duplicated, block: B:210:0x04a9  */
    /* JADX WARN: Code duplicated, block: B:212:0x04bd  */
    /* JADX WARN: Code duplicated, block: B:214:0x04d3  */
    /* JADX WARN: Code duplicated, block: B:216:0x04e6  */
    /* JADX WARN: Code duplicated, block: B:217:0x04ed  */
    /* JADX WARN: Code duplicated, block: B:220:0x0503  */
    /* JADX WARN: Code duplicated, block: B:221:0x0506  */
    /* JADX WARN: Code duplicated, block: B:224:0x051f  */
    /* JADX WARN: Code duplicated, block: B:225:0x0522  */
    /* JADX WARN: Code duplicated, block: B:228:0x0536  */
    /* JADX WARN: Code duplicated, block: B:230:0x054a  */
    /* JADX WARN: Code duplicated, block: B:232:0x055b  */
    /* JADX WARN: Code duplicated, block: B:233:0x056a  */
    /* JADX WARN: Code duplicated, block: B:236:0x0580  */
    /* JADX WARN: Code duplicated, block: B:238:0x058f  */
    /* JADX WARN: Code duplicated, block: B:240:0x059b  */
    /* JADX WARN: Code duplicated, block: B:242:0x05b1  */
    /* JADX WARN: Code duplicated, block: B:244:0x05bd A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:245:0x05be  */
    /* JADX WARN: Code duplicated, block: B:248:0x05cc A[LOOP:1: B:246:0x05c6->B:248:0x05cc, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:251:0x05ea  */
    /* JADX WARN: Code duplicated, block: B:253:0x05fa  */
    /* JADX WARN: Code duplicated, block: B:254:0x0613  */
    /* JADX WARN: Code duplicated, block: B:264:0x0630  */
    /* JADX WARN: Code duplicated, block: B:266:0x0644  */
    /* JADX WARN: Code duplicated, block: B:268:0x064d  */
    /* JADX WARN: Code duplicated, block: B:270:0x0670  */
    /* JADX WARN: Code duplicated, block: B:272:0x0673  */
    /* JADX WARN: Code duplicated, block: B:43:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:44:0x00cd A[PHI: r6 r7 r14 r15
  0x00cd: PHI (r6v31 java.lang.String) = 
  (r6v4 java.lang.String)
  (r6v5 java.lang.String)
  (r6v6 java.lang.String)
  (r6v7 java.lang.String)
  (r6v32 java.lang.String)
 binds: [B:111:0x019e, B:107:0x018c, B:103:0x017a, B:99:0x0168, B:43:0x00c5] A[DONT_GENERATE, DONT_INLINE]
  0x00cd: PHI (r7v13 java.lang.String) = 
  (r7v1 java.lang.String)
  (r7v2 java.lang.String)
  (r7v3 java.lang.String)
  (r7v4 java.lang.String)
  (r7v14 java.lang.String)
 binds: [B:111:0x019e, B:107:0x018c, B:103:0x017a, B:99:0x0168, B:43:0x00c5] A[DONT_GENERATE, DONT_INLINE]
  0x00cd: PHI (r14v10 java.lang.String) = 
  (r14v1 java.lang.String)
  (r14v2 java.lang.String)
  (r14v3 java.lang.String)
  (r14v4 java.lang.String)
  (r14v11 java.lang.String)
 binds: [B:111:0x019e, B:107:0x018c, B:103:0x017a, B:99:0x0168, B:43:0x00c5] A[DONT_GENERATE, DONT_INLINE]
  0x00cd: PHI (r15v7 java.lang.String) = 
  (r15v1 java.lang.String)
  (r15v2 java.lang.String)
  (r15v3 java.lang.String)
  (r15v4 java.lang.String)
  (r15v8 java.lang.String)
 binds: [B:111:0x019e, B:107:0x018c, B:103:0x017a, B:99:0x0168, B:43:0x00c5] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:45:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:48:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:49:0x00db  */
    /* JADX WARN: Code duplicated, block: B:52:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:53:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:56:0x00ed  */
    /* JADX WARN: Code duplicated, block: B:57:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:60:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:61:0x00fc  */
    /* JADX WARN: Code duplicated, block: B:64:0x0103  */
    /* JADX WARN: Code duplicated, block: B:65:0x0106  */
    /* JADX WARN: Code duplicated, block: B:68:0x010d  */
    /* JADX WARN: Code duplicated, block: B:69:0x0110  */
    /* JADX WARN: Code duplicated, block: B:72:0x0117  */
    /* JADX WARN: Code duplicated, block: B:73:0x011a  */
    /* JADX WARN: Code duplicated, block: B:76:0x0121  */
    /* JADX WARN: Code duplicated, block: B:77:0x0124  */
    /* JADX WARN: Code duplicated, block: B:80:0x012b  */
    /* JADX WARN: Code duplicated, block: B:81:0x012e  */
    /* JADX WARN: Code duplicated, block: B:84:0x0135  */
    /* JADX WARN: Code duplicated, block: B:85:0x0137  */
    /* JADX WARN: Code duplicated, block: B:88:0x013e  */
    /* JADX WARN: Code duplicated, block: B:89:0x0140  */
    /* JADX WARN: Code duplicated, block: B:92:0x0148  */
    /* JADX WARN: Code duplicated, block: B:93:0x014a  */
    /* JADX WARN: Code duplicated, block: B:96:0x0152  */
    /* JADX WARN: Code duplicated, block: B:98:0x015c  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.measurement.zzaq
    public final zzaq zza(String str, zzh zzhVar, List<zzaq> list) {
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        byte b11;
        String str8;
        zzaq zzaqVarZza;
        int i11;
        int iZza;
        StringBuilder sb2;
        int i12;
        String strZzf;
        String strZzf2;
        double dDoubleValue;
        double dZza;
        String strZzf3;
        String str9;
        double dDoubleValue2;
        double dZza2;
        double dMin;
        double length;
        double dZza3;
        double dMin2;
        String str10;
        ArrayList arrayList;
        String strZzf4;
        long jZzc;
        String[] strArrSplit;
        int length2;
        int i13;
        boolean zIsEmpty;
        String str11;
        int iZza2;
        int length3;
        zzaq zzaqVarZza2;
        String strZzf5;
        String str12;
        int iIndexOf;
        int i14;
        zzh zzhVar2;
        String strZzf6;
        double dDoubleValue3;
        if (!"charAt".equals(str) && !"concat".equals(str) && !"hasOwnProperty".equals(str) && !"indexOf".equals(str) && !"lastIndexOf".equals(str) && !"match".equals(str) && !"replace".equals(str) && !"search".equals(str) && !"slice".equals(str) && !"split".equals(str) && !"substring".equals(str) && !"toLowerCase".equals(str) && !"toLocaleLowerCase".equals(str) && !"toString".equals(str) && !"toUpperCase".equals(str)) {
            str2 = "toLocaleUpperCase";
            if (!str2.equals(str)) {
                str3 = "trim";
                if (!str3.equals(str)) {
                    throw new IllegalArgumentException(String.format("%s is not a String function", str));
                }
            }
            str.hashCode();
            switch (str.hashCode()) {
                case -1789698943:
                    str4 = "charAt";
                    str5 = "toString";
                    str6 = r6;
                    str7 = "toLocaleLowerCase";
                    if (str.equals(str6)) {
                        b11 = 0;
                    } else {
                        b11 = -1;
                    }
                    break;
                case -1776922004:
                    str4 = "charAt";
                    str5 = "toString";
                    str7 = "toLocaleLowerCase";
                    str6 = r6;
                    if (str.equals(str5)) {
                        b11 = 1;
                    } else {
                        b11 = -1;
                    }
                    break;
                case -1464939364:
                    str4 = "charAt";
                    str7 = "toLocaleLowerCase";
                    str5 = "toString";
                    str6 = r6;
                    if (str.equals(str7)) {
                        b11 = 2;
                    } else {
                        b11 = -1;
                    }
                    break;
                case -1361633751:
                    str4 = "charAt";
                    str5 = "toString";
                    str6 = r6;
                    str7 = "toLocaleLowerCase";
                    if (str.equals(str4)) {
                        b11 = 3;
                    } else {
                        b11 = -1;
                    }
                    break;
                case -1354795244:
                    if (str.equals("concat")) {
                        b11 = 4;
                        str4 = "charAt";
                        str5 = "toString";
                        str6 = r6;
                        str7 = "toLocaleLowerCase";
                    }
                    str4 = "charAt";
                    str5 = "toString";
                    str6 = "hasOwnProperty";
                    str7 = "toLocaleLowerCase";
                    b11 = -1;
                    break;
                case -1137582698:
                    if (str.equals("toLowerCase")) {
                        b11 = 5;
                        str4 = "charAt";
                        str5 = "toString";
                        str6 = r6;
                        str7 = "toLocaleLowerCase";
                    }
                    str4 = "charAt";
                    str5 = "toString";
                    str6 = "hasOwnProperty";
                    str7 = "toLocaleLowerCase";
                    b11 = -1;
                    break;
                case -906336856:
                    if (str.equals("search")) {
                        b11 = 6;
                        str4 = "charAt";
                        str5 = "toString";
                        str6 = r6;
                        str7 = "toLocaleLowerCase";
                    }
                    str4 = "charAt";
                    str5 = "toString";
                    str6 = "hasOwnProperty";
                    str7 = "toLocaleLowerCase";
                    b11 = -1;
                    break;
                case -726908483:
                    if (str.equals(str2)) {
                        b11 = 7;
                        str4 = "charAt";
                        str5 = "toString";
                        str6 = r6;
                        str7 = "toLocaleLowerCase";
                    }
                    str4 = "charAt";
                    str5 = "toString";
                    str6 = "hasOwnProperty";
                    str7 = "toLocaleLowerCase";
                    b11 = -1;
                    break;
                case -467511597:
                    if (str.equals("lastIndexOf")) {
                        b11 = 8;
                        str4 = "charAt";
                        str5 = "toString";
                        str6 = r6;
                        str7 = "toLocaleLowerCase";
                    }
                    str4 = "charAt";
                    str5 = "toString";
                    str6 = "hasOwnProperty";
                    str7 = "toLocaleLowerCase";
                    b11 = -1;
                    break;
                case -399551817:
                    if (str.equals("toUpperCase")) {
                        b11 = 9;
                        str4 = "charAt";
                        str5 = "toString";
                        str6 = r6;
                        str7 = "toLocaleLowerCase";
                    }
                    str4 = "charAt";
                    str5 = "toString";
                    str6 = "hasOwnProperty";
                    str7 = "toLocaleLowerCase";
                    b11 = -1;
                    break;
                case 3568674:
                    if (str.equals(str3)) {
                        b11 = 10;
                        str4 = "charAt";
                        str5 = "toString";
                        str6 = r6;
                        str7 = "toLocaleLowerCase";
                    }
                    str4 = "charAt";
                    str5 = "toString";
                    str6 = "hasOwnProperty";
                    str7 = "toLocaleLowerCase";
                    b11 = -1;
                    break;
                case 103668165:
                    if (str.equals("match")) {
                        b11 = 11;
                        str4 = "charAt";
                        str5 = "toString";
                        str6 = r6;
                        str7 = "toLocaleLowerCase";
                    }
                    str4 = "charAt";
                    str5 = "toString";
                    str6 = "hasOwnProperty";
                    str7 = "toLocaleLowerCase";
                    b11 = -1;
                    break;
                case 109526418:
                    if (str.equals("slice")) {
                        b11 = 12;
                        str4 = "charAt";
                        str5 = "toString";
                        str6 = r6;
                        str7 = "toLocaleLowerCase";
                    }
                    str4 = "charAt";
                    str5 = "toString";
                    str6 = "hasOwnProperty";
                    str7 = "toLocaleLowerCase";
                    b11 = -1;
                    break;
                case 109648666:
                    if (str.equals("split")) {
                        b11 = 13;
                        str4 = "charAt";
                        str5 = "toString";
                        str6 = r6;
                        str7 = "toLocaleLowerCase";
                    }
                    str4 = "charAt";
                    str5 = "toString";
                    str6 = "hasOwnProperty";
                    str7 = "toLocaleLowerCase";
                    b11 = -1;
                    break;
                case 530542161:
                    if (str.equals("substring")) {
                        b11 = 14;
                        str4 = "charAt";
                        str5 = "toString";
                        str6 = r6;
                        str7 = "toLocaleLowerCase";
                    }
                    str4 = "charAt";
                    str5 = "toString";
                    str6 = "hasOwnProperty";
                    str7 = "toLocaleLowerCase";
                    b11 = -1;
                    break;
                case 1094496948:
                    if (str.equals("replace")) {
                        b11 = 15;
                        str4 = "charAt";
                        str5 = "toString";
                        str6 = r6;
                        str7 = "toLocaleLowerCase";
                    }
                    str4 = "charAt";
                    str5 = "toString";
                    str6 = "hasOwnProperty";
                    str7 = "toLocaleLowerCase";
                    b11 = -1;
                    break;
                case 1943291465:
                    if (str.equals("indexOf")) {
                        b11 = 16;
                        str4 = "charAt";
                        str5 = "toString";
                        str6 = r6;
                        str7 = "toLocaleLowerCase";
                    }
                    str4 = "charAt";
                    str5 = "toString";
                    str6 = "hasOwnProperty";
                    str7 = "toLocaleLowerCase";
                    b11 = -1;
                    break;
                default:
                    str4 = "charAt";
                    str5 = "toString";
                    str6 = "hasOwnProperty";
                    str7 = "toLocaleLowerCase";
                    b11 = -1;
                    break;
            }
            switch (b11) {
                case 0:
                    zzg.zza(str6, 1, list);
                    str8 = this.zza;
                    zzaqVarZza = zzhVar.zza(list.get(0));
                    if ("length".equals(zzaqVarZza.zzf())) {
                        return zzaq.zzh;
                    }
                    double dDoubleValue4 = zzaqVarZza.zze().doubleValue();
                    return (dDoubleValue4 == Math.floor(dDoubleValue4) || (i11 = (int) dDoubleValue4) < 0 || i11 >= str8.length()) ? zzaq.zzi : zzaq.zzh;
                case 1:
                    zzg.zza(str5, 0, list);
                    return this;
                case 2:
                    zzg.zza(str7, 0, list);
                    return new zzas(this.zza.toLowerCase());
                case 3:
                    zzg.zzc(str4, 1, list);
                    if (list.isEmpty()) {
                        iZza = 0;
                    } else {
                        iZza = (int) zzg.zza(zzhVar.zza(list.get(0)).zze().doubleValue());
                    }
                    String str13 = this.zza;
                    return (iZza >= 0 || iZza >= str13.length()) ? zzaq.zzj : new zzas(String.valueOf(str13.charAt(iZza)));
                case 4:
                    if (list.isEmpty()) {
                        return this;
                    }
                    sb2 = new StringBuilder(this.zza);
                    for (i12 = 0; i12 < list.size(); i12++) {
                        sb2.append(zzhVar.zza(list.get(i12)).zzf());
                    }
                    return new zzas(sb2.toString());
                case 5:
                    zzg.zza("toLowerCase", 0, list);
                    return new zzas(this.zza.toLowerCase(Locale.ENGLISH));
                case 6:
                    zzg.zzc("search", 1, list);
                    if (list.isEmpty()) {
                        strZzf = zzaq.zzc.zzf();
                    } else {
                        strZzf = zzhVar.zza(list.get(0)).zzf();
                    }
                    Matcher matcher = Pattern.compile(strZzf).matcher(this.zza);
                    return matcher.find() ? new zzai(Double.valueOf(matcher.start())) : new zzai(Double.valueOf(-1.0d));
                case 7:
                    zzg.zza(str2, 0, list);
                    return new zzas(this.zza.toUpperCase());
                case 8:
                    zzg.zzc("lastIndexOf", 2, list);
                    String str14 = this.zza;
                    if (list.size() <= 0) {
                        strZzf2 = zzaq.zzc.zzf();
                    } else {
                        strZzf2 = zzhVar.zza(list.get(0)).zzf();
                    }
                    if (list.size() < 2) {
                        dDoubleValue = Double.NaN;
                    } else {
                        dDoubleValue = zzhVar.zza(list.get(1)).zze().doubleValue();
                    }
                    if (Double.isNaN(dDoubleValue)) {
                        dZza = Double.POSITIVE_INFINITY;
                    } else {
                        dZza = zzg.zza(dDoubleValue);
                    }
                    return new zzai(Double.valueOf(str14.lastIndexOf(strZzf2, (int) dZza)));
                case 9:
                    zzg.zza("toUpperCase", 0, list);
                    return new zzas(this.zza.toUpperCase(Locale.ENGLISH));
                case 10:
                    zzg.zza("toUpperCase", 0, list);
                    return new zzas(this.zza.trim());
                case 11:
                    zzg.zzc("match", 1, list);
                    String str15 = this.zza;
                    if (list.size() <= 0) {
                        strZzf3 = "";
                    } else {
                        strZzf3 = zzhVar.zza(list.get(0)).zzf();
                    }
                    Matcher matcher2 = Pattern.compile(strZzf3).matcher(str15);
                    return matcher2.find() ? new zzaf(new zzas(matcher2.group())) : zzaq.zzd;
                case 12:
                    zzg.zzc("slice", 2, list);
                    str9 = this.zza;
                    if (list.isEmpty()) {
                        dDoubleValue2 = 0.0d;
                    } else {
                        dDoubleValue2 = zzhVar.zza(list.get(0)).zze().doubleValue();
                    }
                    dZza2 = zzg.zza(dDoubleValue2);
                    if (dZza2 < 0.0d) {
                        dMin = Math.max(((double) str9.length()) + dZza2, 0.0d);
                    } else {
                        dMin = Math.min(dZza2, str9.length());
                    }
                    int i15 = (int) dMin;
                    if (list.size() > 1) {
                        length = zzhVar.zza(list.get(1)).zze().doubleValue();
                    } else {
                        length = str9.length();
                    }
                    dZza3 = zzg.zza(length);
                    if (dZza3 < 0.0d) {
                        dMin2 = Math.max(((double) str9.length()) + dZza3, 0.0d);
                    } else {
                        dMin2 = Math.min(dZza3, str9.length());
                    }
                    return new zzas(str9.substring(i15, Math.max(0, ((int) dMin2) - i15) + i15));
                case 13:
                    zzg.zzc("split", 2, list);
                    str10 = this.zza;
                    if (str10.length() == 0) {
                        return new zzaf(this);
                    }
                    arrayList = new ArrayList();
                    if (list.isEmpty()) {
                        arrayList.add(this);
                    } else {
                        strZzf4 = zzhVar.zza(list.get(0)).zzf();
                        if (list.size() > 1) {
                            jZzc = zzg.zzc(zzhVar.zza(list.get(1)).zze().doubleValue());
                        } else {
                            jZzc = 2147483647L;
                        }
                        if (jZzc == 0) {
                            return new zzaf();
                        }
                        strArrSplit = str10.split(Pattern.quote(strZzf4), ((int) jZzc) + 1);
                        length2 = strArrSplit.length;
                        if (strZzf4.isEmpty() || strArrSplit.length <= 0) {
                            i13 = 0;
                        } else {
                            zIsEmpty = strArrSplit[0].isEmpty();
                            if (strArrSplit[strArrSplit.length - 1].isEmpty()) {
                                i13 = zIsEmpty;
                                length2 = strArrSplit.length - 1;
                                i13 = zIsEmpty;
                            }
                        }
                        i13 = zIsEmpty;
                        if (strArrSplit.length > jZzc) {
                            length2--;
                        }
                        while (i13 < length2) {
                            arrayList.add(new zzas(strArrSplit[i13]));
                            i13++;
                        }
                    }
                    return new zzaf(arrayList);
                case 14:
                    zzg.zzc("substring", 2, list);
                    str11 = this.zza;
                    if (list.isEmpty()) {
                        iZza2 = 0;
                    } else {
                        iZza2 = (int) zzg.zza(zzhVar.zza(list.get(0)).zze().doubleValue());
                    }
                    if (list.size() > 1) {
                        length3 = (int) zzg.zza(zzhVar.zza(list.get(1)).zze().doubleValue());
                    } else {
                        length3 = str11.length();
                    }
                    int iMin = Math.min(Math.max(iZza2, 0), str11.length());
                    int iMin2 = Math.min(Math.max(length3, 0), str11.length());
                    return new zzas(str11.substring(Math.min(iMin, iMin2), Math.max(iMin, iMin2)));
                case 15:
                    zzg.zzc("replace", 2, list);
                    zzaqVarZza2 = zzaq.zzc;
                    strZzf5 = zzaqVarZza2.zzf();
                    if (!list.isEmpty()) {
                        strZzf5 = zzhVar.zza(list.get(0)).zzf();
                        if (list.size() > 1) {
                            zzaqVarZza2 = zzhVar.zza(list.get(1));
                        }
                    }
                    str12 = this.zza;
                    iIndexOf = str12.indexOf(strZzf5);
                    if (iIndexOf < 0) {
                        return this;
                    }
                    if (zzaqVarZza2 instanceof zzal) {
                        i14 = 0;
                        zzaqVarZza2 = ((zzal) zzaqVarZza2).zza(zzhVar, Arrays.asList(new zzas(strZzf5), new zzai(Double.valueOf(iIndexOf)), this));
                    } else {
                        i14 = 0;
                    }
                    return new zzas(str12.substring(i14, iIndexOf) + zzaqVarZza2.zzf() + str12.substring(iIndexOf + strZzf5.length()));
                case 16:
                    zzg.zzc("indexOf", 2, list);
                    String str16 = this.zza;
                    if (list.size() <= 0) {
                        strZzf6 = zzaq.zzc.zzf();
                        zzhVar2 = zzhVar;
                    } else {
                        zzhVar2 = zzhVar;
                        strZzf6 = zzhVar2.zza(list.get(0)).zzf();
                    }
                    if (list.size() < 2) {
                        dDoubleValue3 = 0.0d;
                    } else {
                        dDoubleValue3 = zzhVar2.zza(list.get(1)).zze().doubleValue();
                    }
                    return new zzai(Double.valueOf(str16.indexOf(strZzf6, (int) zzg.zza(dDoubleValue3))));
                default:
                    throw new IllegalArgumentException("Command not supported");
            }
        }
        str2 = "toLocaleUpperCase";
        str3 = "trim";
        str.hashCode();
        switch (str.hashCode()) {
            case -1789698943:
                str4 = "charAt";
                str5 = "toString";
                str6 = r6;
                str7 = "toLocaleLowerCase";
                if (str.equals(str6)) {
                    b11 = -1;
                } else {
                    b11 = 0;
                }
                break;
            case -1776922004:
                str4 = "charAt";
                str5 = "toString";
                str7 = "toLocaleLowerCase";
                str6 = r6;
                if (str.equals(str5)) {
                    b11 = -1;
                } else {
                    b11 = 1;
                }
                break;
            case -1464939364:
                str4 = "charAt";
                str7 = "toLocaleLowerCase";
                str5 = "toString";
                str6 = r6;
                if (str.equals(str7)) {
                    b11 = -1;
                } else {
                    b11 = 2;
                }
                break;
            case -1361633751:
                str4 = "charAt";
                str5 = "toString";
                str6 = r6;
                str7 = "toLocaleLowerCase";
                if (str.equals(str4)) {
                    b11 = -1;
                } else {
                    b11 = 3;
                }
                break;
            case -1354795244:
                if (str.equals("concat")) {
                    b11 = 4;
                    str4 = "charAt";
                    str5 = "toString";
                    str6 = r6;
                    str7 = "toLocaleLowerCase";
                }
                str4 = "charAt";
                str5 = "toString";
                str6 = "hasOwnProperty";
                str7 = "toLocaleLowerCase";
                b11 = -1;
                break;
            case -1137582698:
                if (str.equals("toLowerCase")) {
                    b11 = 5;
                    str4 = "charAt";
                    str5 = "toString";
                    str6 = r6;
                    str7 = "toLocaleLowerCase";
                }
                str4 = "charAt";
                str5 = "toString";
                str6 = "hasOwnProperty";
                str7 = "toLocaleLowerCase";
                b11 = -1;
                break;
            case -906336856:
                if (str.equals("search")) {
                    b11 = 6;
                    str4 = "charAt";
                    str5 = "toString";
                    str6 = r6;
                    str7 = "toLocaleLowerCase";
                }
                str4 = "charAt";
                str5 = "toString";
                str6 = "hasOwnProperty";
                str7 = "toLocaleLowerCase";
                b11 = -1;
                break;
            case -726908483:
                if (str.equals(str2)) {
                    b11 = 7;
                    str4 = "charAt";
                    str5 = "toString";
                    str6 = r6;
                    str7 = "toLocaleLowerCase";
                }
                str4 = "charAt";
                str5 = "toString";
                str6 = "hasOwnProperty";
                str7 = "toLocaleLowerCase";
                b11 = -1;
                break;
            case -467511597:
                if (str.equals("lastIndexOf")) {
                    b11 = 8;
                    str4 = "charAt";
                    str5 = "toString";
                    str6 = r6;
                    str7 = "toLocaleLowerCase";
                }
                str4 = "charAt";
                str5 = "toString";
                str6 = "hasOwnProperty";
                str7 = "toLocaleLowerCase";
                b11 = -1;
                break;
            case -399551817:
                if (str.equals("toUpperCase")) {
                    b11 = 9;
                    str4 = "charAt";
                    str5 = "toString";
                    str6 = r6;
                    str7 = "toLocaleLowerCase";
                }
                str4 = "charAt";
                str5 = "toString";
                str6 = "hasOwnProperty";
                str7 = "toLocaleLowerCase";
                b11 = -1;
                break;
            case 3568674:
                if (str.equals(str3)) {
                    b11 = 10;
                    str4 = "charAt";
                    str5 = "toString";
                    str6 = r6;
                    str7 = "toLocaleLowerCase";
                }
                str4 = "charAt";
                str5 = "toString";
                str6 = "hasOwnProperty";
                str7 = "toLocaleLowerCase";
                b11 = -1;
                break;
            case 103668165:
                if (str.equals("match")) {
                    b11 = 11;
                    str4 = "charAt";
                    str5 = "toString";
                    str6 = r6;
                    str7 = "toLocaleLowerCase";
                }
                str4 = "charAt";
                str5 = "toString";
                str6 = "hasOwnProperty";
                str7 = "toLocaleLowerCase";
                b11 = -1;
                break;
            case 109526418:
                if (str.equals("slice")) {
                    b11 = 12;
                    str4 = "charAt";
                    str5 = "toString";
                    str6 = r6;
                    str7 = "toLocaleLowerCase";
                }
                str4 = "charAt";
                str5 = "toString";
                str6 = "hasOwnProperty";
                str7 = "toLocaleLowerCase";
                b11 = -1;
                break;
            case 109648666:
                if (str.equals("split")) {
                    b11 = 13;
                    str4 = "charAt";
                    str5 = "toString";
                    str6 = r6;
                    str7 = "toLocaleLowerCase";
                }
                str4 = "charAt";
                str5 = "toString";
                str6 = "hasOwnProperty";
                str7 = "toLocaleLowerCase";
                b11 = -1;
                break;
            case 530542161:
                if (str.equals("substring")) {
                    b11 = 14;
                    str4 = "charAt";
                    str5 = "toString";
                    str6 = r6;
                    str7 = "toLocaleLowerCase";
                }
                str4 = "charAt";
                str5 = "toString";
                str6 = "hasOwnProperty";
                str7 = "toLocaleLowerCase";
                b11 = -1;
                break;
            case 1094496948:
                if (str.equals("replace")) {
                    b11 = 15;
                    str4 = "charAt";
                    str5 = "toString";
                    str6 = r6;
                    str7 = "toLocaleLowerCase";
                }
                str4 = "charAt";
                str5 = "toString";
                str6 = "hasOwnProperty";
                str7 = "toLocaleLowerCase";
                b11 = -1;
                break;
            case 1943291465:
                if (str.equals("indexOf")) {
                    b11 = 16;
                    str4 = "charAt";
                    str5 = "toString";
                    str6 = r6;
                    str7 = "toLocaleLowerCase";
                }
                str4 = "charAt";
                str5 = "toString";
                str6 = "hasOwnProperty";
                str7 = "toLocaleLowerCase";
                b11 = -1;
                break;
            default:
                str4 = "charAt";
                str5 = "toString";
                str6 = "hasOwnProperty";
                str7 = "toLocaleLowerCase";
                b11 = -1;
                break;
        }
        switch (b11) {
            case 0:
                zzg.zza(str6, 1, list);
                str8 = this.zza;
                zzaqVarZza = zzhVar.zza(list.get(0));
                if ("length".equals(zzaqVarZza.zzf())) {
                    return zzaq.zzh;
                }
                double dDoubleValue5 = zzaqVarZza.zze().doubleValue();
                if (dDoubleValue5 == Math.floor(dDoubleValue5)) {
                }
                break;
            case 1:
                zzg.zza(str5, 0, list);
                return this;
            case 2:
                zzg.zza(str7, 0, list);
                return new zzas(this.zza.toLowerCase());
            case 3:
                zzg.zzc(str4, 1, list);
                if (list.isEmpty()) {
                    iZza = (int) zzg.zza(zzhVar.zza(list.get(0)).zze().doubleValue());
                } else {
                    iZza = 0;
                }
                String str17 = this.zza;
                if (iZza >= 0) {
                }
                break;
            case 4:
                if (list.isEmpty()) {
                    return this;
                }
                sb2 = new StringBuilder(this.zza);
                while (i12 < list.size()) {
                    sb2.append(zzhVar.zza(list.get(i12)).zzf());
                }
                return new zzas(sb2.toString());
            case 5:
                zzg.zza("toLowerCase", 0, list);
                return new zzas(this.zza.toLowerCase(Locale.ENGLISH));
            case 6:
                zzg.zzc("search", 1, list);
                if (list.isEmpty()) {
                    strZzf = zzhVar.zza(list.get(0)).zzf();
                } else {
                    strZzf = zzaq.zzc.zzf();
                }
                Matcher matcher3 = Pattern.compile(strZzf).matcher(this.zza);
                if (matcher3.find()) {
                }
            case 7:
                zzg.zza(str2, 0, list);
                return new zzas(this.zza.toUpperCase());
            case 8:
                zzg.zzc("lastIndexOf", 2, list);
                String str18 = this.zza;
                if (list.size() <= 0) {
                    strZzf2 = zzaq.zzc.zzf();
                } else {
                    strZzf2 = zzhVar.zza(list.get(0)).zzf();
                }
                if (list.size() < 2) {
                    dDoubleValue = Double.NaN;
                } else {
                    dDoubleValue = zzhVar.zza(list.get(1)).zze().doubleValue();
                }
                if (Double.isNaN(dDoubleValue)) {
                    dZza = Double.POSITIVE_INFINITY;
                } else {
                    dZza = zzg.zza(dDoubleValue);
                }
                return new zzai(Double.valueOf(str18.lastIndexOf(strZzf2, (int) dZza)));
            case 9:
                zzg.zza("toUpperCase", 0, list);
                return new zzas(this.zza.toUpperCase(Locale.ENGLISH));
            case 10:
                zzg.zza("toUpperCase", 0, list);
                return new zzas(this.zza.trim());
            case 11:
                zzg.zzc("match", 1, list);
                String str19 = this.zza;
                if (list.size() <= 0) {
                    strZzf3 = "";
                } else {
                    strZzf3 = zzhVar.zza(list.get(0)).zzf();
                }
                Matcher matcher4 = Pattern.compile(strZzf3).matcher(str19);
                if (matcher4.find()) {
                }
            case 12:
                zzg.zzc("slice", 2, list);
                str9 = this.zza;
                if (list.isEmpty()) {
                    dDoubleValue2 = zzhVar.zza(list.get(0)).zze().doubleValue();
                } else {
                    dDoubleValue2 = 0.0d;
                }
                dZza2 = zzg.zza(dDoubleValue2);
                if (dZza2 < 0.0d) {
                    dMin = Math.max(((double) str9.length()) + dZza2, 0.0d);
                } else {
                    dMin = Math.min(dZza2, str9.length());
                }
                int i16 = (int) dMin;
                if (list.size() > 1) {
                    length = zzhVar.zza(list.get(1)).zze().doubleValue();
                } else {
                    length = str9.length();
                }
                dZza3 = zzg.zza(length);
                if (dZza3 < 0.0d) {
                    dMin2 = Math.max(((double) str9.length()) + dZza3, 0.0d);
                } else {
                    dMin2 = Math.min(dZza3, str9.length());
                }
                return new zzas(str9.substring(i16, Math.max(0, ((int) dMin2) - i16) + i16));
            case 13:
                zzg.zzc("split", 2, list);
                str10 = this.zza;
                if (str10.length() == 0) {
                    return new zzaf(this);
                }
                arrayList = new ArrayList();
                if (list.isEmpty()) {
                    arrayList.add(this);
                } else {
                    strZzf4 = zzhVar.zza(list.get(0)).zzf();
                    if (list.size() > 1) {
                        jZzc = zzg.zzc(zzhVar.zza(list.get(1)).zze().doubleValue());
                    } else {
                        jZzc = 2147483647L;
                    }
                    if (jZzc == 0) {
                        return new zzaf();
                    }
                    strArrSplit = str10.split(Pattern.quote(strZzf4), ((int) jZzc) + 1);
                    length2 = strArrSplit.length;
                    if (strZzf4.isEmpty()) {
                        i13 = 0;
                    } else {
                        i13 = 0;
                    }
                    i13 = zIsEmpty;
                    if (strArrSplit.length > jZzc) {
                        length2--;
                    }
                    while (i13 < length2) {
                        arrayList.add(new zzas(strArrSplit[i13]));
                        i13++;
                    }
                }
                return new zzaf(arrayList);
            case 14:
                zzg.zzc("substring", 2, list);
                str11 = this.zza;
                if (list.isEmpty()) {
                    iZza2 = (int) zzg.zza(zzhVar.zza(list.get(0)).zze().doubleValue());
                } else {
                    iZza2 = 0;
                }
                if (list.size() > 1) {
                    length3 = (int) zzg.zza(zzhVar.zza(list.get(1)).zze().doubleValue());
                } else {
                    length3 = str11.length();
                }
                int iMin3 = Math.min(Math.max(iZza2, 0), str11.length());
                int iMin4 = Math.min(Math.max(length3, 0), str11.length());
                return new zzas(str11.substring(Math.min(iMin3, iMin4), Math.max(iMin3, iMin4)));
            case 15:
                zzg.zzc("replace", 2, list);
                zzaqVarZza2 = zzaq.zzc;
                strZzf5 = zzaqVarZza2.zzf();
                if (!list.isEmpty()) {
                    strZzf5 = zzhVar.zza(list.get(0)).zzf();
                    if (list.size() > 1) {
                        zzaqVarZza2 = zzhVar.zza(list.get(1));
                    }
                }
                str12 = this.zza;
                iIndexOf = str12.indexOf(strZzf5);
                if (iIndexOf < 0) {
                    return this;
                }
                if (zzaqVarZza2 instanceof zzal) {
                    i14 = 0;
                    zzaqVarZza2 = ((zzal) zzaqVarZza2).zza(zzhVar, Arrays.asList(new zzas(strZzf5), new zzai(Double.valueOf(iIndexOf)), this));
                } else {
                    i14 = 0;
                }
                return new zzas(str12.substring(i14, iIndexOf) + zzaqVarZza2.zzf() + str12.substring(iIndexOf + strZzf5.length()));
            case 16:
                zzg.zzc("indexOf", 2, list);
                String str110 = this.zza;
                if (list.size() <= 0) {
                    strZzf6 = zzaq.zzc.zzf();
                    zzhVar2 = zzhVar;
                } else {
                    zzhVar2 = zzhVar;
                    strZzf6 = zzhVar2.zza(list.get(0)).zzf();
                }
                if (list.size() < 2) {
                    dDoubleValue3 = 0.0d;
                } else {
                    dDoubleValue3 = zzhVar2.zza(list.get(1)).zze().doubleValue();
                }
                return new zzai(Double.valueOf(str110.indexOf(strZzf6, (int) zzg.zza(dDoubleValue3))));
            default:
                throw new IllegalArgumentException("Command not supported");
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzaq
    public final zzaq zzc() {
        return new zzas(this.zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzaq
    public final Boolean zzd() {
        return Boolean.valueOf(!this.zza.isEmpty());
    }

    @Override // com.google.android.gms.internal.measurement.zzaq
    public final Double zze() {
        if (this.zza.isEmpty()) {
            return Double.valueOf(0.0d);
        }
        try {
            return Double.valueOf(this.zza);
        } catch (NumberFormatException unused) {
            return Double.valueOf(Double.NaN);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzaq
    public final String zzf() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.measurement.zzaq
    public final Iterator<zzaq> zzh() {
        return new zzav(this);
    }
}
