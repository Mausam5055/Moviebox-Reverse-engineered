package i00;

/* JADX INFO: loaded from: classes7.dex */
public class a {
    public static int a(float f11, int i11, int i12) {
        int i13 = (i11 >> 24) & 255;
        int i14 = (i11 >> 16) & 255;
        int i15 = (i11 >> 8) & 255;
        int i16 = i11 & 255;
        return ((i13 + ((int) ((((i12 >> 24) & 255) - i13) * f11))) << 24) | ((i14 + ((int) ((((i12 >> 16) & 255) - i14) * f11))) << 16) | ((i15 + ((int) ((((i12 >> 8) & 255) - i15) * f11))) << 8) | (i16 + ((int) (f11 * ((i12 & 255) - i16))));
    }
}
