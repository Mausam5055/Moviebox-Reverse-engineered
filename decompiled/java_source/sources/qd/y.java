package qd;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.NotFoundException;

/* JADX INFO: loaded from: classes5.dex */
public final class y extends w {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final int[] f73606j = {1, 1, 1, 1, 1, 1};

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    static final int[][] f73607k = {new int[]{56, 52, 50, 49, 44, 38, 35, 42, 41, 37}, new int[]{7, 11, 13, 14, 19, 25, 28, 21, 22, 26}};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final int[] f73608i = new int[4];

    public static String s(String str) {
        char[] cArr = new char[6];
        str.getChars(1, 7, cArr, 0);
        StringBuilder sb2 = new StringBuilder(12);
        sb2.append(str.charAt(0));
        char c11 = cArr[5];
        switch (c11) {
            case AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE:
            case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
            case '2':
                sb2.append(cArr, 0, 2);
                sb2.append(c11);
                sb2.append("0000");
                sb2.append(cArr, 2, 3);
                break;
            case AD_REWARD_USER_VALUE:
                sb2.append(cArr, 0, 3);
                sb2.append("00000");
                sb2.append(cArr, 3, 2);
                break;
            case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
                sb2.append(cArr, 0, 4);
                sb2.append("00000");
                sb2.append(cArr[4]);
                break;
            default:
                sb2.append(cArr, 0, 5);
                sb2.append("0000");
                sb2.append(c11);
                break;
        }
        if (str.length() >= 8) {
            sb2.append(str.charAt(7));
        }
        return sb2.toString();
    }

    private static void t(StringBuilder sb2, int i11) throws NotFoundException {
        for (int i12 = 0; i12 <= 1; i12++) {
            for (int i13 = 0; i13 < 10; i13++) {
                if (i11 == f73607k[i12][i13]) {
                    sb2.insert(0, (char) (i12 + 48));
                    sb2.append((char) (i13 + 48));
                    return;
                }
            }
        }
        throw NotFoundException.getNotFoundInstance();
    }

    @Override // qd.w
    protected boolean h(String str) {
        return super.h(s(str));
    }

    @Override // qd.w
    protected int[] k(id.a aVar, int i11) {
        return w.n(aVar, i11, true, f73606j);
    }

    @Override // qd.w
    protected int l(id.a aVar, int[] iArr, StringBuilder sb2) throws NotFoundException {
        int[] iArr2 = this.f73608i;
        iArr2[0] = 0;
        iArr2[1] = 0;
        iArr2[2] = 0;
        iArr2[3] = 0;
        int iM = aVar.m();
        int i11 = iArr[1];
        int i12 = 0;
        for (int i13 = 0; i13 < 6 && i11 < iM; i13++) {
            int iJ = w.j(aVar, iArr2, i11, w.f73602h);
            sb2.append((char) ((iJ % 10) + 48));
            for (int i14 : iArr2) {
                i11 += i14;
            }
            if (iJ >= 10) {
                i12 |= 1 << (5 - i13);
            }
        }
        t(sb2, i12);
        return i11;
    }

    @Override // qd.w
    BarcodeFormat q() {
        return BarcodeFormat.UPC_E;
    }
}
