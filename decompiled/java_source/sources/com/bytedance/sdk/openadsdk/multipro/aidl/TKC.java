package com.bytedance.sdk.openadsdk.multipro.aidl;

import android.content.ContentResolver;
import android.database.CharArrayBuffer;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.DataSetObserver;
import android.net.Uri;
import android.os.Bundle;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class TKC implements Cursor {
    Map<String, List<String>> Sj;
    int TKC = 0;
    String[] sP;

    public TKC(Map<String, List<String>> map) {
        if (map == null || map.keySet() == null) {
            this.Sj = new HashMap();
            return;
        }
        this.Sj = map;
        try {
            this.sP = (String[]) map.keySet().toArray(new String[map.keySet().size()]);
        } catch (Exception unused) {
        }
    }

    @Override // android.database.Cursor, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // android.database.Cursor
    public void copyStringToBuffer(int i11, CharArrayBuffer charArrayBuffer) {
    }

    @Override // android.database.Cursor
    public void deactivate() {
    }

    @Override // android.database.Cursor
    public byte[] getBlob(int i11) {
        return new byte[0];
    }

    @Override // android.database.Cursor
    public int getColumnCount() {
        String[] strArr = this.sP;
        if (strArr != null) {
            return strArr.length;
        }
        return 0;
    }

    @Override // android.database.Cursor
    public int getColumnIndex(String str) {
        String[] strArr = this.sP;
        if (strArr == null || strArr.length == 0) {
            return -1;
        }
        int i11 = 0;
        while (true) {
            String[] strArr2 = this.sP;
            if (i11 >= strArr2.length) {
                return 0;
            }
            if (str.equals(strArr2[i11])) {
                return i11;
            }
            i11++;
        }
    }

    @Override // android.database.Cursor
    public int getColumnIndexOrThrow(String str) throws IllegalArgumentException {
        return 0;
    }

    @Override // android.database.Cursor
    public String getColumnName(int i11) {
        if (i11 < 0) {
            return "";
        }
        String[] strArr = this.sP;
        return i11 < strArr.length ? strArr[i11] : "";
    }

    @Override // android.database.Cursor
    public String[] getColumnNames() {
        return this.sP;
    }

    @Override // android.database.Cursor
    public int getCount() {
        try {
            String[] strArr = this.sP;
            if (strArr != null && strArr.length != 0) {
                return this.Sj.get(strArr[0]).size();
            }
            return 0;
        } catch (Exception unused) {
            return 0;
        }
    }

    @Override // android.database.Cursor
    public double getDouble(int i11) {
        try {
            return Double.parseDouble(getString(i11));
        } catch (Exception unused) {
            return 0.0d;
        }
    }

    @Override // android.database.Cursor
    public Bundle getExtras() {
        return null;
    }

    @Override // android.database.Cursor
    public float getFloat(int i11) {
        try {
            return Float.parseFloat(getString(i11));
        } catch (Exception unused) {
            return 0.0f;
        }
    }

    @Override // android.database.Cursor
    public int getInt(int i11) {
        try {
            return Integer.parseInt(getString(i11));
        } catch (Exception unused) {
            return 0;
        }
    }

    @Override // android.database.Cursor
    public long getLong(int i11) {
        try {
            return Long.parseLong(getString(i11));
        } catch (Exception unused) {
            return 0L;
        }
    }

    @Override // android.database.Cursor
    public Uri getNotificationUri() {
        return null;
    }

    @Override // android.database.Cursor
    public int getPosition() {
        return this.TKC;
    }

    @Override // android.database.Cursor
    public short getShort(int i11) {
        try {
            return Short.parseShort(getString(i11));
        } catch (Exception unused) {
            return (short) 0;
        }
    }

    @Override // android.database.Cursor
    public String getString(int i11) {
        return (i11 < 0 || i11 >= getColumnCount()) ? "" : this.Sj.get(this.sP[i11]).get(getPosition());
    }

    @Override // android.database.Cursor
    public int getType(int i11) {
        return 0;
    }

    @Override // android.database.Cursor
    public boolean getWantsAllOnMoveCalls() {
        return false;
    }

    @Override // android.database.Cursor
    public boolean isAfterLast() {
        return false;
    }

    @Override // android.database.Cursor
    public boolean isBeforeFirst() {
        return false;
    }

    @Override // android.database.Cursor
    public boolean isClosed() {
        return false;
    }

    @Override // android.database.Cursor
    public boolean isFirst() {
        return this.TKC == 0;
    }

    @Override // android.database.Cursor
    public boolean isLast() {
        return this.TKC == getCount() - 1;
    }

    @Override // android.database.Cursor
    public boolean isNull(int i11) {
        return getString(i11) == null;
    }

    @Override // android.database.Cursor
    public boolean move(int i11) {
        if (this.TKC + i11 >= getCount()) {
            return false;
        }
        this.TKC += i11;
        return true;
    }

    @Override // android.database.Cursor
    public boolean moveToFirst() {
        if (getCount() <= 0) {
            return false;
        }
        this.TKC = 0;
        return true;
    }

    @Override // android.database.Cursor
    public boolean moveToLast() {
        if (getCount() <= 0) {
            return false;
        }
        this.TKC = this.Sj.get(this.sP[0]).size() - 1;
        return true;
    }

    @Override // android.database.Cursor
    public boolean moveToNext() {
        if (this.TKC + 1 >= getCount()) {
            return false;
        }
        this.TKC++;
        return true;
    }

    @Override // android.database.Cursor
    public boolean moveToPosition(int i11) {
        if (i11 >= getCount()) {
            return false;
        }
        this.TKC = i11;
        return true;
    }

    @Override // android.database.Cursor
    public boolean moveToPrevious() {
        int i11 = this.TKC;
        if (i11 - 1 < 0) {
            return false;
        }
        this.TKC = i11 - 1;
        return true;
    }

    @Override // android.database.Cursor
    public void registerContentObserver(ContentObserver contentObserver) {
    }

    @Override // android.database.Cursor
    public void registerDataSetObserver(DataSetObserver dataSetObserver) {
    }

    @Override // android.database.Cursor
    public boolean requery() {
        return false;
    }

    @Override // android.database.Cursor
    public Bundle respond(Bundle bundle) {
        return null;
    }

    @Override // android.database.Cursor
    public void setExtras(Bundle bundle) {
    }

    @Override // android.database.Cursor
    public void setNotificationUri(ContentResolver contentResolver, Uri uri) {
    }

    @Override // android.database.Cursor
    public void unregisterContentObserver(ContentObserver contentObserver) {
    }

    @Override // android.database.Cursor
    public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
    }
}
