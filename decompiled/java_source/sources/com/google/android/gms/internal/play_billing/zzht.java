package com.google.android.gms.internal.play_billing;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'zzc' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:485)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:422)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:351)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:284)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:153)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: loaded from: classes4.dex */
public final class zzht {
    public static final zzht zza;
    public static final zzht zzb;
    public static final zzht zzc;
    public static final zzht zzd;
    public static final zzht zze;
    public static final zzht zzf;
    public static final zzht zzg;
    public static final zzht zzh;
    public static final zzht zzi;
    public static final zzht zzj;
    public static final zzht zzk;
    public static final zzht zzl;
    public static final zzht zzm;
    public static final zzht zzn;
    public static final zzht zzo;
    public static final zzht zzp;
    public static final zzht zzq;
    public static final zzht zzr;
    private static final /* synthetic */ zzht[] zzs;
    private final zzhu zzt;

    static {
        zzht zzhtVar = new zzht("DOUBLE", 0, zzhu.DOUBLE, 1);
        zza = zzhtVar;
        zzht zzhtVar2 = new zzht("FLOAT", 1, zzhu.FLOAT, 5);
        zzb = zzhtVar2;
        zzhu zzhuVar = zzhu.LONG;
        zzht zzhtVar3 = new zzht("INT64", 2, zzhuVar, 0);
        zzc = zzhtVar3;
        zzht zzhtVar4 = new zzht("UINT64", 3, zzhuVar, 0);
        zzd = zzhtVar4;
        zzhu zzhuVar2 = zzhu.INT;
        zzht zzhtVar5 = new zzht("INT32", 4, zzhuVar2, 0);
        zze = zzhtVar5;
        zzht zzhtVar6 = new zzht("FIXED64", 5, zzhuVar, 1);
        zzf = zzhtVar6;
        zzht zzhtVar7 = new zzht("FIXED32", 6, zzhuVar2, 5);
        zzg = zzhtVar7;
        zzht zzhtVar8 = new zzht("BOOL", 7, zzhu.BOOLEAN, 0);
        zzh = zzhtVar8;
        zzht zzhtVar9 = new zzht("STRING", 8, zzhu.STRING, 2);
        zzi = zzhtVar9;
        zzhu zzhuVar3 = zzhu.MESSAGE;
        zzht zzhtVar10 = new zzht("GROUP", 9, zzhuVar3, 3);
        zzj = zzhtVar10;
        zzht zzhtVar11 = new zzht("MESSAGE", 10, zzhuVar3, 2);
        zzk = zzhtVar11;
        zzht zzhtVar12 = new zzht("BYTES", 11, zzhu.BYTE_STRING, 2);
        zzl = zzhtVar12;
        zzht zzhtVar13 = new zzht("UINT32", 12, zzhuVar2, 0);
        zzm = zzhtVar13;
        zzht zzhtVar14 = new zzht("ENUM", 13, zzhu.ENUM, 0);
        zzn = zzhtVar14;
        zzht zzhtVar15 = new zzht("SFIXED32", 14, zzhuVar2, 5);
        zzo = zzhtVar15;
        zzht zzhtVar16 = new zzht("SFIXED64", 15, zzhuVar, 1);
        zzp = zzhtVar16;
        zzht zzhtVar17 = new zzht("SINT32", 16, zzhuVar2, 0);
        zzq = zzhtVar17;
        zzht zzhtVar18 = new zzht("SINT64", 17, zzhuVar, 0);
        zzr = zzhtVar18;
        zzs = new zzht[]{zzhtVar, zzhtVar2, zzhtVar3, zzhtVar4, zzhtVar5, zzhtVar6, zzhtVar7, zzhtVar8, zzhtVar9, zzhtVar10, zzhtVar11, zzhtVar12, zzhtVar13, zzhtVar14, zzhtVar15, zzhtVar16, zzhtVar17, zzhtVar18};
    }

    private zzht(String str, int i11, zzhu zzhuVar, int i12) {
        super(str, i11);
        this.zzt = zzhuVar;
    }

    public static zzht[] values() {
        return (zzht[]) zzs.clone();
    }

    public final zzhu zza() {
        return this.zzt;
    }
}
