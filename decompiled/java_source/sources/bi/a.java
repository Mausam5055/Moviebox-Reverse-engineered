package bi;

import android.os.ParcelFileDescriptor;
import android.util.Base64DataException;
import android.util.MalformedJsonException;
import androidx.core.view.InputDeviceCompat;
import androidx.core.view.PointerIconCompat;
import java.io.CharConversionException;
import java.io.EOFException;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.ObjectStreamException;
import java.io.SyncFailedException;
import java.io.UTFDataFormatException;
import java.io.UnsupportedEncodingException;
import java.net.BindException;
import java.net.ConnectException;
import java.net.HttpRetryException;
import java.net.MalformedURLException;
import java.net.NoRouteToHostException;
import java.net.PortUnreachableException;
import java.net.ProtocolException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.net.UnknownServiceException;
import java.nio.channels.AsynchronousCloseException;
import java.nio.channels.FileLockInterruptionException;
import java.nio.charset.MalformedInputException;
import java.nio.charset.UnmappableCharacterException;
import java.util.InvalidPropertiesFormatException;
import java.util.jar.JarException;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLKeyException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLProtocolException;
import kotlin.io.FileSystemException;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.http2.ConnectionShutdownException;
import okhttp3.internal.http2.StreamResetException;
import org.apache.http.conn.ConnectTimeoutException;
import org.chromium.net.NetworkException;

/* JADX INFO: loaded from: classes5.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f16472a = new a();

    private a() {
    }

    public final int a(int i11, IOException iOException) {
        if (i11 != 480) {
            return i11;
        }
        if (iOException instanceof SocketTimeoutException) {
            return PointerIconCompat.TYPE_TEXT;
        }
        if (iOException instanceof UnknownHostException) {
            return 1005;
        }
        if (iOException instanceof NoRouteToHostException) {
            return PointerIconCompat.TYPE_CELL;
        }
        if (iOException instanceof ProtocolException) {
            return PointerIconCompat.TYPE_CROSSHAIR;
        }
        if (iOException instanceof SSLHandshakeException) {
            return PointerIconCompat.TYPE_VERTICAL_TEXT;
        }
        if (iOException instanceof ConnectException) {
            return 1011;
        }
        if (iOException instanceof BindException) {
            return 1045;
        }
        if (iOException instanceof PortUnreachableException) {
            return 1012;
        }
        if (iOException instanceof ConnectTimeoutException) {
            return PointerIconCompat.TYPE_ALL_SCROLL;
        }
        if (iOException instanceof SSLKeyException) {
            return PointerIconCompat.TYPE_HORIZONTAL_DOUBLE_ARROW;
        }
        if (iOException instanceof SSLPeerUnverifiedException) {
            return PointerIconCompat.TYPE_VERTICAL_DOUBLE_ARROW;
        }
        if (iOException instanceof SSLProtocolException) {
            return PointerIconCompat.TYPE_TOP_RIGHT_DIAGONAL_DOUBLE_ARROW;
        }
        if (iOException instanceof FileSystemException) {
            return PointerIconCompat.TYPE_TOP_LEFT_DIAGONAL_DOUBLE_ARROW;
        }
        if (iOException instanceof ObjectStreamException) {
            return PointerIconCompat.TYPE_ZOOM_IN;
        }
        if (iOException instanceof AsynchronousCloseException) {
            return PointerIconCompat.TYPE_ZOOM_OUT;
        }
        if (iOException instanceof MalformedInputException) {
            return 1043;
        }
        if (iOException instanceof UnmappableCharacterException) {
            return 1044;
        }
        if (iOException instanceof JarException) {
            return 1022;
        }
        if (iOException instanceof CharConversionException) {
            return 1023;
        }
        if (iOException instanceof Base64DataException) {
            return 1024;
        }
        if (iOException instanceof ConnectionShutdownException) {
            return InputDeviceCompat.SOURCE_GAMEPAD;
        }
        if (iOException instanceof EOFException) {
            return 1027;
        }
        if (iOException instanceof ParcelFileDescriptor.FileDescriptorDetachedException) {
            return 1028;
        }
        if (iOException instanceof FileLockInterruptionException) {
            return 1029;
        }
        if (iOException instanceof FileNotFoundException) {
            return 1030;
        }
        if (iOException instanceof HttpRetryException) {
            return 1031;
        }
        if (iOException instanceof InvalidPropertiesFormatException) {
            return 1033;
        }
        if (iOException instanceof MalformedJsonException) {
            return 1034;
        }
        if (iOException instanceof MalformedURLException) {
            return 1035;
        }
        if (iOException instanceof StreamResetException) {
            return 1037;
        }
        if (iOException instanceof SyncFailedException) {
            return 1038;
        }
        if (iOException instanceof UTFDataFormatException) {
            return 1039;
        }
        if (iOException instanceof UnknownServiceException) {
            return 1040;
        }
        if (iOException instanceof UnsupportedEncodingException) {
            return 1042;
        }
        return Intrinsics.c(iOException != null ? iOException.getMessage() : null, "Canceled") ? 1050 : 480;
    }

    public final int b(int i11, NetworkException networkException, boolean z10) {
        if (i11 != 480) {
            return i11;
        }
        Integer numValueOf = networkException != null ? Integer.valueOf(networkException.getErrorCode()) : null;
        if (numValueOf != null && numValueOf.intValue() == 1) {
            return 1005;
        }
        if (numValueOf != null && numValueOf.intValue() == 2) {
            return PointerIconCompat.TYPE_GRAB;
        }
        if (numValueOf != null && numValueOf.intValue() == 4) {
            return PointerIconCompat.TYPE_TEXT;
        }
        if (numValueOf != null && numValueOf.intValue() == 6) {
            return PointerIconCompat.TYPE_ALL_SCROLL;
        }
        if (numValueOf != null && numValueOf.intValue() == 3) {
            return 1049;
        }
        if (numValueOf != null && numValueOf.intValue() == 5) {
            return 1046;
        }
        if (numValueOf != null && numValueOf.intValue() == 7) {
            return 1047;
        }
        if (numValueOf != null && numValueOf.intValue() == 8) {
            return 1048;
        }
        if (numValueOf != null && numValueOf.intValue() == 9) {
            return PointerIconCompat.TYPE_CELL;
        }
        if (numValueOf != null && numValueOf.intValue() == 10) {
            return PointerIconCompat.TYPE_CROSSHAIR;
        }
        return z10 ? 1050 : 480;
    }
}
