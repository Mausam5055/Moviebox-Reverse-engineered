package hd;

import android.hardware.Camera;
import android.util.Log;

/* JADX INFO: loaded from: classes5.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f64423a = "hd.a";

    public static int a(int i11) {
        int numberOfCameras = Camera.getNumberOfCameras();
        if (numberOfCameras == 0) {
            Log.w(f64423a, "No cameras!");
            return -1;
        }
        boolean z10 = i11 >= 0;
        if (!z10) {
            i11 = 0;
            while (i11 < numberOfCameras) {
                Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
                Camera.getCameraInfo(i11, cameraInfo);
                if (cameraInfo.facing == 0) {
                    break;
                }
                i11++;
            }
        }
        if (i11 < numberOfCameras) {
            return i11;
        }
        return z10 ? -1 : 0;
    }

    public static Camera b(int i11) {
        int iA = a(i11);
        if (iA == -1) {
            return null;
        }
        return Camera.open(iA);
    }
}
