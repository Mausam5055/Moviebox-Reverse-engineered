package a4;

import android.content.ContentValues;
import android.database.Cursor;
import android.os.CancellationSignal;
import java.io.Closeable;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface d extends Closeable {
    void A();

    List D();

    void E(String str);

    void I();

    void J(String str, Object[] objArr);

    void K();

    void L();

    void S(int i11);

    h W(String str);

    void Y();

    Cursor b0(g gVar);

    Cursor e0(g gVar, CancellationSignal cancellationSignal);

    int f0(String str, int i11, ContentValues contentValues, String str2, Object[] objArr);

    String getPath();

    int getVersion();

    Cursor i0(String str);

    boolean isOpen();

    long j0(String str, int i11, ContentValues contentValues);

    boolean s0();

    boolean w0();
}
