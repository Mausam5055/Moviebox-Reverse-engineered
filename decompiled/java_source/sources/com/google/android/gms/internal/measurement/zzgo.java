package com.google.android.gms.internal.measurement;

import android.content.ContentProviderClient;
import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class zzgo implements zzgq {
    @Override // com.google.android.gms.internal.measurement.zzgq
    @Nullable
    public final String zza(ContentResolver contentResolver, String str) throws zzgt {
        Uri uri = zzgi.zza;
        ContentProviderClient contentProviderClientAcquireUnstableContentProviderClient = contentResolver.acquireUnstableContentProviderClient(uri);
        try {
            if (contentProviderClientAcquireUnstableContentProviderClient == null) {
                throw new zzgt("Unable to acquire ContentProviderClient");
            }
            try {
                Cursor cursorQuery = contentProviderClientAcquireUnstableContentProviderClient.query(uri, null, null, new String[]{str}, null);
                try {
                    if (cursorQuery == null) {
                        throw new zzgt("ContentProvider query returned null cursor");
                    }
                    if (!cursorQuery.moveToFirst()) {
                        cursorQuery.close();
                        contentProviderClientAcquireUnstableContentProviderClient.release();
                        return null;
                    }
                    String string = cursorQuery.getString(1);
                    cursorQuery.close();
                    contentProviderClientAcquireUnstableContentProviderClient.release();
                    return string;
                } catch (Throwable th2) {
                    if (cursorQuery != null) {
                        try {
                            cursorQuery.close();
                        } catch (Throwable th3) {
                            th2.addSuppressed(th3);
                        }
                    }
                    throw th2;
                }
            } catch (RemoteException e11) {
                throw new zzgt("ContentProvider query failed", e11);
            }
        } catch (Throwable th4) {
            contentProviderClientAcquireUnstableContentProviderClient.release();
            throw th4;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzgq
    public final <T extends Map<String, String>> T zza(ContentResolver contentResolver, String[] strArr, zzgr<T> zzgrVar) throws zzgt {
        Uri uri = zzgi.zzb;
        ContentProviderClient contentProviderClientAcquireUnstableContentProviderClient = contentResolver.acquireUnstableContentProviderClient(uri);
        if (contentProviderClientAcquireUnstableContentProviderClient == null) {
            throw new zzgt("Unable to acquire ContentProviderClient");
        }
        try {
            try {
                Cursor cursorQuery = contentProviderClientAcquireUnstableContentProviderClient.query(uri, null, null, strArr, null);
                try {
                    if (cursorQuery == null) {
                        throw new zzgt("ContentProvider query returned null cursor");
                    }
                    T t11 = (T) zzgrVar.zza(cursorQuery.getCount());
                    while (cursorQuery.moveToNext()) {
                        t11.put(cursorQuery.getString(0), cursorQuery.getString(1));
                    }
                    if (!cursorQuery.isAfterLast()) {
                        throw new zzgt("Cursor read incomplete (ContentProvider dead?)");
                    }
                    cursorQuery.close();
                    contentProviderClientAcquireUnstableContentProviderClient.release();
                    return t11;
                } catch (Throwable th2) {
                    if (cursorQuery != null) {
                        try {
                            cursorQuery.close();
                        } catch (Throwable th3) {
                            th2.addSuppressed(th3);
                        }
                    }
                    throw th2;
                }
            } catch (RemoteException e11) {
                throw new zzgt("ContentProvider query failed", e11);
            }
        } catch (Throwable th4) {
            contentProviderClientAcquireUnstableContentProviderClient.release();
            throw th4;
        }
    }
}
