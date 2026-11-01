package x6;

import androidx.core.view.PointerIconCompat;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okhttp3.Response;

/* JADX INFO: loaded from: classes3.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final List f78050a = CollectionsKt.o("ERR_NAME_NOT_RESOLVED", "ERR_TIMED_OUT", "ERR_CONNECTION_CLOSED", "ERR_CONNECTION_TIMED_OUT", "ERR_CONNECTION_REFUSED", "ERR_CONNECTION_RESET", "ERR_ADDRESS_UNREACHABLE", "ERR_QUIC_PROTOCOL_ERROR");

    public static final boolean a(Response response) {
        int iCode;
        Intrinsics.h(response, "<this>");
        return !d(response) && 400 <= (iCode = response.code()) && iCode < 600;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static final int b(Exception exc) {
        Object obj;
        Intrinsics.h(exc, "<this>");
        Iterator it = f78050a.iterator();
        while (true) {
            obj = null;
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            String str = (String) next;
            String message = exc.getMessage();
            if (message != null && StringsKt.c0(message, str, false, 2, null)) {
                obj = next;
                break;
            }
        }
        String str2 = (String) obj;
        if (str2 != null) {
            switch (str2.hashCode()) {
                case -2126483297:
                    if (str2.equals("ERR_CONNECTION_TIMED_OUT")) {
                        return PointerIconCompat.TYPE_ALL_SCROLL;
                    }
                    break;
                case -1656717400:
                    if (str2.equals("ERR_QUIC_PROTOCOL_ERROR")) {
                        return PointerIconCompat.TYPE_CROSSHAIR;
                    }
                    break;
                case -1521802893:
                    if (str2.equals("ERR_CONNECTION_CLOSED")) {
                        return 1046;
                    }
                    break;
                case -1051917428:
                    if (str2.equals("ERR_TIMED_OUT")) {
                        return PointerIconCompat.TYPE_TEXT;
                    }
                    break;
                case -1005274040:
                    if (str2.equals("ERR_CONNECTION_RESET")) {
                        return 1048;
                    }
                    break;
                case 287761289:
                    if (str2.equals("ERR_CONNECTION_REFUSED")) {
                        return 1047;
                    }
                    break;
                case 341511375:
                    if (str2.equals("ERR_ADDRESS_UNREACHABLE")) {
                        return PointerIconCompat.TYPE_CELL;
                    }
                    break;
                case 1081559230:
                    if (str2.equals("ERR_NAME_NOT_RESOLVED")) {
                        return 1005;
                    }
                    break;
            }
        }
        return -1;
    }

    public static final int c(Response response) {
        int iCode;
        Intrinsics.h(response, "<this>");
        if (d(response) || ((400 > (iCode = response.code()) || iCode >= 500) && response.code() != 505)) {
            return -1;
        }
        return response.code();
    }

    public static final boolean d(Response response) {
        Intrinsics.h(response, "<this>");
        return response.code() == 429;
    }
}
