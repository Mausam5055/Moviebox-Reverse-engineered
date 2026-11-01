package com.google.android.gms.measurement.internal;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteFullException;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.util.Clock;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class zzgf extends zzh {
    private final zzgi zza;
    private boolean zzb;

    zzgf(zzhy zzhyVar) {
        super(zzhyVar);
        this.zza = new zzgi(this, zza(), "google_app_measurement_local.db");
    }

    private static long zza(SQLiteDatabase sQLiteDatabase) {
        Cursor cursorQuery = null;
        try {
            cursorQuery = sQLiteDatabase.query("messages", new String[]{"rowid"}, "type=?", new String[]{"3"}, null, null, "rowid desc", "1");
            if (!cursorQuery.moveToFirst()) {
                cursorQuery.close();
                return -1L;
            }
            long j11 = cursorQuery.getLong(0);
            cursorQuery.close();
            return j11;
        } catch (Throwable th2) {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            throw th2;
        }
    }

    /* JADX WARN: Code duplicated, block: B:33:0x0060  */
    /* JADX WARN: Code duplicated, block: B:77:0x0123  */
    /* JADX WARN: Code duplicated, block: B:79:0x0128  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v2, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r10v6, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r10v7 */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v12 */
    /* JADX WARN: Type inference failed for: r7v13 */
    /* JADX WARN: Type inference failed for: r7v3, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r7v4, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r7v5, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Type inference failed for: r7v8 */
    private final boolean zza(int i11, byte[] bArr) throws Throwable {
        SQLiteDatabase sQLiteDatabaseZzad;
        ?? RawQuery;
        long j11;
        zzt();
        ?? r11 = 0;
        if (this.zzb) {
            return false;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put(NativeComponentConstants.KEY_COMPONENT_TYPE, Integer.valueOf(i11));
        contentValues.put("entry", bArr);
        int i12 = 0;
        int i13 = 5;
        for (int i14 = 5; i12 < i14; i14 = 5) {
            ?? r12 = 0;
             = 0;
            r12 = 0;
            ?? r13 = 0;
            r12 = 0;
            SQLiteDatabase sQLiteDatabase = null;
            try {
                sQLiteDatabaseZzad = zzad();
                try {
                    if (sQLiteDatabaseZzad == null) {
                        this.zzb = true;
                        if (sQLiteDatabaseZzad != null) {
                            sQLiteDatabaseZzad.close();
                        }
                        return r11;
                    }
                    sQLiteDatabaseZzad.beginTransaction();
                    RawQuery = sQLiteDatabaseZzad.rawQuery("select count(1) from messages", null);
                    if (RawQuery != 0) {
                        try {
                            if (RawQuery.moveToFirst()) {
                                j11 = RawQuery.getLong(r11);
                            } else {
                                j11 = 0;
                            }
                        } catch (SQLiteDatabaseLockedException unused) {
                            r13 = RawQuery;
                            SystemClock.sleep(i13);
                            i13 += 20;
                            if (r13 != 0) {
                                r13.close();
                            }
                            if (sQLiteDatabaseZzad != null) {
                                sQLiteDatabaseZzad.close();
                            }
                            i12++;
                            r11 = 0;
                        } catch (SQLiteFullException e11) {
                            e = e11;
                            r12 = RawQuery;
                            try {
                                zzj().zzg().zza("Error writing entry; local database full", e);
                                this.zzb = true;
                                if (r12 != 0) {
                                    r12.close();
                                }
                                if (sQLiteDatabaseZzad != null) {
                                    sQLiteDatabaseZzad.close();
                                }
                                i12++;
                                r11 = 0;
                            } catch (Throwable th2) {
                                th = th2;
                                if (r12 != 0) {
                                    r12.close();
                                }
                                if (sQLiteDatabaseZzad != null) {
                                    sQLiteDatabaseZzad.close();
                                }
                                throw th;
                            }
                        } catch (SQLiteException e12) {
                            e = e12;
                            sQLiteDatabase = sQLiteDatabaseZzad;
                            RawQuery = RawQuery;
                            if (sQLiteDatabase != null) {
                                try {
                                    if (sQLiteDatabase.inTransaction()) {
                                        sQLiteDatabase.endTransaction();
                                    }
                                } catch (Throwable th3) {
                                    th = th3;
                                    sQLiteDatabaseZzad = sQLiteDatabase;
                                    r12 = RawQuery;
                                    if (r12 != 0) {
                                        r12.close();
                                    }
                                    if (sQLiteDatabaseZzad != null) {
                                        sQLiteDatabaseZzad.close();
                                    }
                                    throw th;
                                }
                            }
                            zzj().zzg().zza("Error writing entry to local database", e);
                            this.zzb = true;
                            if (RawQuery != 0) {
                                RawQuery.close();
                            }
                            if (sQLiteDatabase != null) {
                                sQLiteDatabase.close();
                            }
                            i12++;
                            r11 = 0;
                        } catch (Throwable th4) {
                            th = th4;
                            r12 = RawQuery;
                            if (r12 != 0) {
                                r12.close();
                            }
                            if (sQLiteDatabaseZzad != null) {
                                sQLiteDatabaseZzad.close();
                            }
                            throw th;
                        }
                    } else {
                        j11 = 0;
                    }
                    if (j11 >= 100000) {
                        zzj().zzg().zza("Data loss, local db full");
                        long j12 = 100001 - j11;
                        long jDelete = sQLiteDatabaseZzad.delete("messages", "rowid in (select rowid from messages order by rowid asc limit ?)", new String[]{Long.toString(j12)});
                        if (jDelete != j12) {
                            zzj().zzg().zza("Different delete count than expected in local db. expected, received, difference", Long.valueOf(j12), Long.valueOf(jDelete), Long.valueOf(j12 - jDelete));
                        }
                    }
                    sQLiteDatabaseZzad.insertOrThrow("messages", null, contentValues);
                    sQLiteDatabaseZzad.setTransactionSuccessful();
                    sQLiteDatabaseZzad.endTransaction();
                    if (RawQuery != 0) {
                        RawQuery.close();
                    }
                    sQLiteDatabaseZzad.close();
                    return true;
                } catch (SQLiteDatabaseLockedException unused2) {
                } catch (SQLiteFullException e13) {
                    e = e13;
                } catch (SQLiteException e14) {
                    e = e14;
                    RawQuery = 0;
                }
            } catch (SQLiteDatabaseLockedException unused3) {
                sQLiteDatabaseZzad = null;
            } catch (SQLiteFullException e15) {
                e = e15;
                sQLiteDatabaseZzad = null;
            } catch (SQLiteException e16) {
                e = e16;
                RawQuery = 0;
            } catch (Throwable th5) {
                th = th5;
                sQLiteDatabaseZzad = null;
                if (r12 != 0) {
                    r12.close();
                }
                if (sQLiteDatabaseZzad != null) {
                    sQLiteDatabaseZzad.close();
                }
                throw th;
            }
        }
        zzj().zzp().zza("Failed to write entry to local database");
        return false;
    }

    private final SQLiteDatabase zzad() throws SQLiteException {
        if (this.zzb) {
            return null;
        }
        SQLiteDatabase writableDatabase = this.zza.getWritableDatabase();
        if (writableDatabase != null) {
            return writableDatabase;
        }
        this.zzb = true;
        return null;
    }

    private final boolean zzae() {
        return zza().getDatabasePath("google_app_measurement_local.db").exists();
    }

    @Override // com.google.android.gms.measurement.internal.zzja, com.google.android.gms.measurement.internal.zzjc
    public final /* bridge */ /* synthetic */ Context zza() {
        return super.zza();
    }

    /* JADX WARN: Code duplicated, block: B:110:0x01af A[Catch: all -> 0x01b3, TryCatch #8 {all -> 0x01b3, blocks: (B:108:0x01a9, B:110:0x01af, B:113:0x01b7, B:128:0x01e5, B:120:0x01d2), top: B:145:0x01a9 }] */
    /* JADX WARN: Code duplicated, block: B:115:0x01c6  */
    /* JADX WARN: Code duplicated, block: B:117:0x01cb  */
    /* JADX WARN: Code duplicated, block: B:123:0x01d9  */
    /* JADX WARN: Code duplicated, block: B:125:0x01de  */
    /* JADX WARN: Code duplicated, block: B:130:0x01f4  */
    /* JADX WARN: Code duplicated, block: B:132:0x01f9  */
    /* JADX WARN: Code duplicated, block: B:135:0x0203  */
    /* JADX WARN: Code duplicated, block: B:137:0x0208  */
    /* JADX WARN: Code duplicated, block: B:145:0x01a9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:164:0x01fc A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:166:0x01fc A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:168:0x01fc A[SYNTHETIC] */
    public final List<AbstractSafeParcelable> zza(int i11) throws Throwable {
        SQLiteDatabase sQLiteDatabase;
        Cursor cursorQuery;
        SQLiteDatabase sQLiteDatabaseZzad;
        SQLiteDatabase sQLiteDatabase2;
        String str;
        String[] strArr;
        zzon zzonVarCreateFromParcel;
        zzae zzaeVarCreateFromParcel;
        zzt();
        Cursor cursor = null;
        if (this.zzb) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        if (!zzae()) {
            return arrayList;
        }
        int i12 = 5;
        int i13 = 0;
        for (int i14 = 5; i13 < i14; i14 = 5) {
            try {
                sQLiteDatabaseZzad = zzad();
                if (sQLiteDatabaseZzad == null) {
                    try {
                        this.zzb = true;
                        if (sQLiteDatabaseZzad != null) {
                            sQLiteDatabaseZzad.close();
                        }
                        return null;
                    } catch (SQLiteFullException e11) {
                        e = e11;
                        cursorQuery = null;
                        zzj().zzg().zza("Error reading entries from local database", e);
                        this.zzb = true;
                        if (cursorQuery != null) {
                            cursorQuery.close();
                        }
                        if (sQLiteDatabaseZzad != null) {
                            sQLiteDatabaseZzad.close();
                        }
                        i13++;
                    } catch (SQLiteException e12) {
                        e = e12;
                        cursorQuery = null;
                        if (sQLiteDatabaseZzad != null) {
                            try {
                                if (sQLiteDatabaseZzad.inTransaction()) {
                                    sQLiteDatabaseZzad.endTransaction();
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                cursor = cursorQuery;
                                sQLiteDatabase = sQLiteDatabaseZzad;
                                if (cursor != null) {
                                    cursor.close();
                                }
                                if (sQLiteDatabase != null) {
                                    sQLiteDatabase.close();
                                }
                                throw th;
                            }
                        }
                        zzj().zzg().zza("Error reading entries from local database", e);
                        this.zzb = true;
                        if (cursorQuery != null) {
                            cursorQuery.close();
                        }
                        if (sQLiteDatabaseZzad != null) {
                            sQLiteDatabaseZzad.close();
                        }
                        i13++;
                    }
                } else {
                    try {
                        try {
                            sQLiteDatabaseZzad.beginTransaction();
                            long jZza = zza(sQLiteDatabaseZzad);
                            long j11 = -1;
                            if (jZza != -1) {
                                str = "rowid<?";
                                strArr = new String[]{String.valueOf(jZza)};
                            } else {
                                str = null;
                                strArr = null;
                            }
                            sQLiteDatabase = sQLiteDatabaseZzad;
                            try {
                                cursorQuery = sQLiteDatabaseZzad.query("messages", new String[]{"rowid", NativeComponentConstants.KEY_COMPONENT_TYPE, "entry"}, str, strArr, null, null, "rowid asc", Integer.toString(100));
                                while (cursorQuery.moveToNext()) {
                                    try {
                                        j11 = cursorQuery.getLong(0);
                                        int i15 = cursorQuery.getInt(1);
                                        byte[] blob = cursorQuery.getBlob(2);
                                        if (i15 == 0) {
                                            Parcel parcelObtain = Parcel.obtain();
                                            try {
                                                try {
                                                    parcelObtain.unmarshall(blob, 0, blob.length);
                                                    parcelObtain.setDataPosition(0);
                                                    zzbf zzbfVarCreateFromParcel = zzbf.CREATOR.createFromParcel(parcelObtain);
                                                    parcelObtain.recycle();
                                                    if (zzbfVarCreateFromParcel != null) {
                                                        arrayList.add(zzbfVarCreateFromParcel);
                                                    }
                                                } catch (Throwable th3) {
                                                    parcelObtain.recycle();
                                                    throw th3;
                                                }
                                            } catch (SafeParcelReader.ParseException unused) {
                                                zzj().zzg().zza("Failed to load event from local database");
                                                parcelObtain.recycle();
                                            }
                                        } else if (i15 == 1) {
                                            Parcel parcelObtain2 = Parcel.obtain();
                                            try {
                                                try {
                                                    parcelObtain2.unmarshall(blob, 0, blob.length);
                                                    parcelObtain2.setDataPosition(0);
                                                    zzonVarCreateFromParcel = zzon.CREATOR.createFromParcel(parcelObtain2);
                                                    parcelObtain2.recycle();
                                                } catch (Throwable th4) {
                                                    parcelObtain2.recycle();
                                                    throw th4;
                                                }
                                            } catch (SafeParcelReader.ParseException unused2) {
                                                zzj().zzg().zza("Failed to load user property from local database");
                                                parcelObtain2.recycle();
                                                zzonVarCreateFromParcel = null;
                                            }
                                            if (zzonVarCreateFromParcel != null) {
                                                arrayList.add(zzonVarCreateFromParcel);
                                            }
                                        } else if (i15 == 2) {
                                            Parcel parcelObtain3 = Parcel.obtain();
                                            try {
                                                try {
                                                    parcelObtain3.unmarshall(blob, 0, blob.length);
                                                    parcelObtain3.setDataPosition(0);
                                                    zzaeVarCreateFromParcel = zzae.CREATOR.createFromParcel(parcelObtain3);
                                                    parcelObtain3.recycle();
                                                } catch (SafeParcelReader.ParseException unused3) {
                                                    zzj().zzg().zza("Failed to load conditional user property from local database");
                                                    parcelObtain3.recycle();
                                                    zzaeVarCreateFromParcel = null;
                                                }
                                                if (zzaeVarCreateFromParcel != null) {
                                                    arrayList.add(zzaeVarCreateFromParcel);
                                                }
                                            } catch (Throwable th5) {
                                                parcelObtain3.recycle();
                                                throw th5;
                                            }
                                        } else if (i15 == 3) {
                                            zzj().zzu().zza("Skipping app launch break");
                                        } else {
                                            zzj().zzg().zza("Unknown record type in local database");
                                        }
                                    } catch (SQLiteDatabaseLockedException unused4) {
                                        sQLiteDatabase2 = sQLiteDatabase;
                                        SystemClock.sleep(i12);
                                        i12 += 20;
                                        if (cursorQuery != null) {
                                            cursorQuery.close();
                                        }
                                        if (sQLiteDatabase2 != null) {
                                            sQLiteDatabase2.close();
                                        }
                                        i13++;
                                    } catch (SQLiteFullException e13) {
                                        e = e13;
                                        sQLiteDatabaseZzad = sQLiteDatabase;
                                        zzj().zzg().zza("Error reading entries from local database", e);
                                        this.zzb = true;
                                        if (cursorQuery != null) {
                                            cursorQuery.close();
                                        }
                                        if (sQLiteDatabaseZzad != null) {
                                            sQLiteDatabaseZzad.close();
                                        }
                                        i13++;
                                    } catch (SQLiteException e14) {
                                        e = e14;
                                        sQLiteDatabaseZzad = sQLiteDatabase;
                                        if (sQLiteDatabaseZzad != null) {
                                            if (sQLiteDatabaseZzad.inTransaction()) {
                                                sQLiteDatabaseZzad.endTransaction();
                                            }
                                        }
                                        zzj().zzg().zza("Error reading entries from local database", e);
                                        this.zzb = true;
                                        if (cursorQuery != null) {
                                            cursorQuery.close();
                                        }
                                        if (sQLiteDatabaseZzad != null) {
                                            sQLiteDatabaseZzad.close();
                                        }
                                        i13++;
                                    } catch (Throwable th6) {
                                        th = th6;
                                        cursor = cursorQuery;
                                    }
                                }
                                if (sQLiteDatabase.delete("messages", "rowid <= ?", new String[]{Long.toString(j11)}) < arrayList.size()) {
                                    zzj().zzg().zza("Fewer entries removed from local database than expected");
                                }
                                sQLiteDatabase.setTransactionSuccessful();
                                sQLiteDatabase.endTransaction();
                                cursorQuery.close();
                                sQLiteDatabase.close();
                                return arrayList;
                            } catch (SQLiteDatabaseLockedException unused5) {
                                cursorQuery = null;
                                sQLiteDatabase2 = sQLiteDatabase;
                                SystemClock.sleep(i12);
                                i12 += 20;
                                if (cursorQuery != null) {
                                    cursorQuery.close();
                                }
                                if (sQLiteDatabase2 != null) {
                                    sQLiteDatabase2.close();
                                }
                                i13++;
                            } catch (SQLiteFullException e15) {
                                e = e15;
                                cursorQuery = null;
                            } catch (SQLiteException e16) {
                                e = e16;
                                cursorQuery = null;
                            } catch (Throwable th7) {
                                th = th7;
                            }
                        } catch (SQLiteFullException e17) {
                            e = e17;
                            cursorQuery = null;
                            zzj().zzg().zza("Error reading entries from local database", e);
                            this.zzb = true;
                            if (cursorQuery != null) {
                                cursorQuery.close();
                            }
                            if (sQLiteDatabaseZzad != null) {
                                sQLiteDatabaseZzad.close();
                            }
                            i13++;
                        } catch (SQLiteException e18) {
                            e = e18;
                            cursorQuery = null;
                            if (sQLiteDatabaseZzad != null) {
                                if (sQLiteDatabaseZzad.inTransaction()) {
                                    sQLiteDatabaseZzad.endTransaction();
                                }
                            }
                            zzj().zzg().zza("Error reading entries from local database", e);
                            this.zzb = true;
                            if (cursorQuery != null) {
                                cursorQuery.close();
                            }
                            if (sQLiteDatabaseZzad != null) {
                                sQLiteDatabaseZzad.close();
                            }
                            i13++;
                        }
                    } catch (SQLiteDatabaseLockedException unused6) {
                        sQLiteDatabase = sQLiteDatabaseZzad;
                    } catch (Throwable th8) {
                        th = th8;
                        sQLiteDatabase = sQLiteDatabaseZzad;
                    }
                }
            } catch (SQLiteDatabaseLockedException unused7) {
                cursorQuery = null;
                sQLiteDatabase2 = null;
            } catch (SQLiteFullException e19) {
                e = e19;
                cursorQuery = null;
                sQLiteDatabaseZzad = null;
            } catch (SQLiteException e20) {
                e = e20;
                cursorQuery = null;
                sQLiteDatabaseZzad = null;
            } catch (Throwable th9) {
                th = th9;
                sQLiteDatabase = null;
            }
            if (cursor != null) {
                cursor.close();
            }
            if (sQLiteDatabase != null) {
                sQLiteDatabase.close();
            }
            throw th;
        }
        zzj().zzu().zza("Failed to read events from database in reasonable time");
        return null;
    }

    public final boolean zza(zzae zzaeVar) {
        zzq();
        byte[] bArrZza = zzos.zza((Parcelable) zzaeVar);
        if (bArrZza.length <= 131072) {
            return zza(2, bArrZza);
        }
        zzj().zzn().zza("Conditional user property too long for local database. Sending directly to service");
        return false;
    }

    public final boolean zza(zzbf zzbfVar) {
        Parcel parcelObtain = Parcel.obtain();
        zzbfVar.writeToParcel(parcelObtain, 0);
        byte[] bArrMarshall = parcelObtain.marshall();
        parcelObtain.recycle();
        if (bArrMarshall.length <= 131072) {
            return zza(0, bArrMarshall);
        }
        zzj().zzn().zza("Event is too long for local database. Sending event directly to service");
        return false;
    }

    public final boolean zza(zzon zzonVar) {
        Parcel parcelObtain = Parcel.obtain();
        zzonVar.writeToParcel(parcelObtain, 0);
        byte[] bArrMarshall = parcelObtain.marshall();
        parcelObtain.recycle();
        if (bArrMarshall.length <= 131072) {
            return zza(1, bArrMarshall);
        }
        zzj().zzn().zza("User property too long for local database. Sending directly to service");
        return false;
    }

    public final void zzaa() {
        int iDelete;
        zzt();
        try {
            SQLiteDatabase sQLiteDatabaseZzad = zzad();
            if (sQLiteDatabaseZzad == null || (iDelete = sQLiteDatabaseZzad.delete("messages", null, null)) <= 0) {
                return;
            }
            zzj().zzp().zza("Reset local analytics data. records", Integer.valueOf(iDelete));
        } catch (SQLiteException e11) {
            zzj().zzg().zza("Error resetting local analytics data. error", e11);
        }
    }

    public final boolean zzab() {
        return zza(3, new byte[0]);
    }

    public final boolean zzac() {
        zzt();
        if (this.zzb || !zzae()) {
            return false;
        }
        int i11 = 5;
        for (int i12 = 0; i12 < 5; i12++) {
            SQLiteDatabase sQLiteDatabase = null;
            try {
                try {
                    SQLiteDatabase sQLiteDatabaseZzad = zzad();
                    if (sQLiteDatabaseZzad == null) {
                        this.zzb = true;
                        if (sQLiteDatabaseZzad != null) {
                            sQLiteDatabaseZzad.close();
                        }
                        return false;
                    }
                    sQLiteDatabaseZzad.beginTransaction();
                    sQLiteDatabaseZzad.delete("messages", "type == ?", new String[]{Integer.toString(3)});
                    sQLiteDatabaseZzad.setTransactionSuccessful();
                    sQLiteDatabaseZzad.endTransaction();
                    sQLiteDatabaseZzad.close();
                    return true;
                } catch (SQLiteFullException e11) {
                    zzj().zzg().zza("Error deleting app launch break from local database", e11);
                    this.zzb = true;
                    if (0 != 0) {
                        sQLiteDatabase.close();
                    }
                }
            } catch (SQLiteDatabaseLockedException unused) {
                SystemClock.sleep(i11);
                i11 += 20;
                if (0 != 0) {
                    sQLiteDatabase.close();
                }
            } catch (SQLiteException e12) {
                if (0 != 0) {
                    try {
                        if (sQLiteDatabase.inTransaction()) {
                            sQLiteDatabase.endTransaction();
                        }
                    } catch (Throwable th2) {
                        if (0 != 0) {
                            sQLiteDatabase.close();
                        }
                        throw th2;
                    }
                }
                zzj().zzg().zza("Error deleting app launch break from local database", e12);
                this.zzb = true;
                if (0 != 0) {
                    sQLiteDatabase.close();
                }
            }
        }
        zzj().zzu().zza("Error deleting app launch break from local database in reasonable time");
        return false;
    }

    @Override // com.google.android.gms.measurement.internal.zzja, com.google.android.gms.measurement.internal.zzjc
    public final /* bridge */ /* synthetic */ Clock zzb() {
        return super.zzb();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zzb zzc() {
        return super.zzc();
    }

    @Override // com.google.android.gms.measurement.internal.zzja, com.google.android.gms.measurement.internal.zzjc
    public final /* bridge */ /* synthetic */ zzab zzd() {
        return super.zzd();
    }

    @Override // com.google.android.gms.measurement.internal.zzja
    public final /* bridge */ /* synthetic */ zzag zze() {
        return super.zze();
    }

    @Override // com.google.android.gms.measurement.internal.zzja
    public final /* bridge */ /* synthetic */ zzaz zzf() {
        return super.zzf();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zzgg zzg() {
        return super.zzg();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zzgf zzh() {
        return super.zzh();
    }

    @Override // com.google.android.gms.measurement.internal.zzja
    public final /* bridge */ /* synthetic */ zzgh zzi() {
        return super.zzi();
    }

    @Override // com.google.android.gms.measurement.internal.zzja, com.google.android.gms.measurement.internal.zzjc
    public final /* bridge */ /* synthetic */ zzgo zzj() {
        return super.zzj();
    }

    @Override // com.google.android.gms.measurement.internal.zzja
    public final /* bridge */ /* synthetic */ zzha zzk() {
        return super.zzk();
    }

    @Override // com.google.android.gms.measurement.internal.zzja, com.google.android.gms.measurement.internal.zzjc
    public final /* bridge */ /* synthetic */ zzhv zzl() {
        return super.zzl();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zzjq zzm() {
        return super.zzm();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zzlj zzn() {
        return super.zzn();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zzls zzo() {
        return super.zzo();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zznb zzp() {
        return super.zzp();
    }

    @Override // com.google.android.gms.measurement.internal.zzja
    public final /* bridge */ /* synthetic */ zzos zzq() {
        return super.zzq();
    }

    @Override // com.google.android.gms.measurement.internal.zze, com.google.android.gms.measurement.internal.zzja
    public final /* bridge */ /* synthetic */ void zzr() {
        super.zzr();
    }

    @Override // com.google.android.gms.measurement.internal.zze, com.google.android.gms.measurement.internal.zzja
    public final /* bridge */ /* synthetic */ void zzs() {
        super.zzs();
    }

    @Override // com.google.android.gms.measurement.internal.zze, com.google.android.gms.measurement.internal.zzja
    public final /* bridge */ /* synthetic */ void zzt() {
        super.zzt();
    }

    @Override // com.google.android.gms.measurement.internal.zzh
    protected final boolean zzz() {
        return false;
    }
}
