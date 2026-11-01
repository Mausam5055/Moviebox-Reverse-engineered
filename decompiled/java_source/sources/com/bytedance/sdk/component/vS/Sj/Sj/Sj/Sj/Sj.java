package com.bytedance.sdk.component.vS.Sj.Sj.Sj.Sj;

import android.content.Context;
import android.database.Cursor;
import android.text.TextUtils;
import com.bytedance.sdk.component.vS.Sj.Dq;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class Sj extends TKC {
    private com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj EjP;
    protected List<String> Sj;
    private final Context TKC;

    public Sj(Context context, com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj sj2) {
        super(context);
        this.Sj = new ArrayList();
        this.TKC = context;
        this.EjP = sj2;
        if (sj2 == null) {
            this.EjP = com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj.TKC();
        }
    }

    private static String Sj(String str, String str2) {
        return !TextUtils.isEmpty(str) ? str : str2;
    }

    private static String Sj(String str, List<?> list, int i11, boolean z10) {
        String str2 = z10 ? " IN " : " NOT IN ";
        String str3 = z10 ? " OR " : " AND ";
        int iMin = Math.min(i11, 1000);
        int size = list.size();
        int i12 = size % iMin == 0 ? size / iMin : (size / iMin) + 1;
        StringBuilder sb2 = new StringBuilder();
        for (int i13 = 0; i13 < i12; i13++) {
            int i14 = i13 * iMin;
            String strSj = Sj(TextUtils.join("','", list.subList(i14, Math.min(i14 + iMin, size))), "");
            if (i13 != 0) {
                sb2.append(str3);
            }
            sb2.append(str);
            sb2.append(str2);
            sb2.append("('");
            sb2.append(strSj);
            sb2.append("')");
        }
        return Sj(sb2.toString(), str + str2 + "('')");
    }

    public static String sP(String str) {
        return "CREATE TABLE IF NOT EXISTS " + str + " (_id INTEGER PRIMARY KEY AUTOINCREMENT,id TEXT UNIQUE,value TEXT ,gen_time TEXT , retry INTEGER default 0 , encrypt INTEGER default 0)";
    }

    private void sP(int i11, long j11) {
        if (j11 > 0 || i11 > 0) {
            com.bytedance.sdk.component.vS.Sj.Sj.Sj.TKC.Sj(HiB(), sP(), "gen_time <? OR retry >?", new String[]{String.valueOf(System.currentTimeMillis() - j11), String.valueOf(i11)});
            sP();
        }
    }

    public byte EjP() {
        return (byte) 0;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0027 A[DONT_GENERATE, EXC_TOP_SPLITTER, PHI: r0 r1
  0x0027: PHI (r0v3 android.database.Cursor) = (r0v2 android.database.Cursor), (r0v4 android.database.Cursor) binds: [B:15:0x0031, B:9:0x0025] A[DONT_GENERATE, DONT_INLINE]
  0x0027: PHI (r1v3 int) = (r1v0 int), (r1v5 int) binds: [B:15:0x0031, B:9:0x0025] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    public int Sj() {
        Cursor cursorSj = null;
        int i11 = 0;
        try {
            cursorSj = com.bytedance.sdk.component.vS.Sj.Sj.Sj.TKC.Sj(HiB(), sP(), new String[]{"count(1)"}, null, null, null, null, null);
            if (cursorSj != null) {
                cursorSj.moveToFirst();
                i11 = cursorSj.getInt(0);
            }
        } catch (Exception unused) {
        } finally {
            if (cursorSj != null) {
                try {
                    cursorSj.close();
                } catch (Exception unused2) {
                }
            }
        }
        return i11;
    }

    /* JADX WARN: Failed to calculate best type for var: r0v24 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r0v24 ??, new type: byte
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.calculateFromBounds(FixTypesVisitor.java:159)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.setBestType(FixTypesVisitor.java:136)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.deduceType(FixTypesVisitor.java:241)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryDeduceTypes(FixTypesVisitor.java:224)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
    Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 6 more
     */
    /* JADX WARN: Failed to calculate best type for var: r0v24 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r0v24 ??, new type: byte
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$1(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(Unknown Source)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r17v0 'this'  ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r17v0 'this'  ??, new type: com.bytedance.sdk.component.vS.Sj.Sj.Sj.Sj.Sj
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$1(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(Unknown Source)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to set immutable type for var: r17v0 'this'  ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r17v0 'this'  ??, new type: com.bytedance.sdk.component.vS.Sj.Sj.Sj.Sj.Sj
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.applyWithWiderIgnSame(TypeUpdate.java:73)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setImmutableType(TypeInferenceVisitor.java:111)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$0(TypeInferenceVisitor.java:102)
    	at java.base/java.util.ArrayList.forEach(Unknown Source)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:102)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 6 more
     */
    /*  JADX ERROR: Types fix failed
        jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r0v24 ??, new type: char
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryPossibleTypes(FixTypesVisitor.java:186)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.deduceType(FixTypesVisitor.java:245)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryDeduceTypes(FixTypesVisitor.java:224)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
        Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
        	... 5 more
        */
    public java.util.List<com.bytedance.sdk.component.vS.Sj.EjP.Sj> Sj(int r18, java.lang.String r19) {
        /*
            Method dump skipped, instruction units count: 368
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.component.vS.Sj.Sj.Sj.Sj.Sj.Sj(int, java.lang.String):java.util.List");
    }

    public List<com.bytedance.sdk.component.vS.Sj.EjP.Sj> Sj(String str) {
        com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj sj2 = this.EjP;
        return sj2 == null ? new ArrayList() : Sj(sj2.sP(), str);
    }

    public void Sj(int i11, long j11) {
        sP(i11, j11);
    }

    protected void Sj(List<String> list) {
        sP();
        list.size();
        com.bytedance.sdk.component.vS.Sj.Sj.Sj.TKC.Sj(HiB(), "DELETE FROM " + sP() + " WHERE " + Sj("id", list, 1000, true));
        com.bytedance.sdk.component.vS.Sj.TKC.sP.Sj(com.bytedance.sdk.component.vS.Sj.sP.EjP.EjP.pfr(), list.size());
        TKC(list);
    }

    public boolean Sj(int i11) {
        if (this.EjP == null) {
            return false;
        }
        int iSj = Sj();
        int iSj2 = this.EjP.Sj();
        sP();
        if (com.bytedance.sdk.component.vS.Sj.TKC.Sj.TKC() && (i11 == 1 || i11 == 2)) {
            return iSj > 0;
        }
        return iSj >= iSj2;
    }

    public byte TKC() {
        return (byte) 2;
    }

    @Override // com.bytedance.sdk.component.vS.Sj.Sj.Sj.Sj.TKC
    public String sP() {
        com.bytedance.sdk.component.vS.Sj.Sj.HiB hiBEjP = Dq.Jcg().EjP();
        if (hiBEjP != null) {
            return hiBEjP.sP();
        }
        return null;
    }

    public void sP(List<com.bytedance.sdk.component.vS.Sj.EjP.Sj> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        LinkedList linkedList = new LinkedList();
        for (com.bytedance.sdk.component.vS.Sj.EjP.Sj sj2 : list) {
            linkedList.add(sj2.TKC());
            com.bytedance.sdk.component.vS.Sj.TKC.Sj.TEQ(sj2);
        }
        sP();
        linkedList.size();
        com.bytedance.sdk.component.vS.Sj.Sj.Sj.TKC.Sj(HiB(), "DELETE FROM " + sP() + " WHERE " + Sj("id", linkedList, 1000, true));
        TKC(linkedList);
    }
}
