package oa;

import android.animation.TypeEvaluator;

/* JADX INFO: loaded from: classes5.dex */
public class c implements TypeEvaluator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final c f70923a = new c();

    public static c b() {
        return f70923a;
    }

    @Override // android.animation.TypeEvaluator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Integer evaluate(float f11, Integer num, Integer num2) {
        int iIntValue = num.intValue();
        float f12 = ((iIntValue >> 24) & 255) / 255.0f;
        int iIntValue2 = num2.intValue();
        float fPow = (float) Math.pow(((iIntValue >> 16) & 255) / 255.0f, 2.2d);
        float fPow2 = (float) Math.pow(((iIntValue >> 8) & 255) / 255.0f, 2.2d);
        float fPow3 = (float) Math.pow((iIntValue & 255) / 255.0f, 2.2d);
        float fPow4 = (float) Math.pow(((iIntValue2 >> 16) & 255) / 255.0f, 2.2d);
        float f13 = f12 + (((((iIntValue2 >> 24) & 255) / 255.0f) - f12) * f11);
        float fPow5 = fPow2 + ((((float) Math.pow(((iIntValue2 >> 8) & 255) / 255.0f, 2.2d)) - fPow2) * f11);
        float fPow6 = fPow3 + (f11 * (((float) Math.pow((iIntValue2 & 255) / 255.0f, 2.2d)) - fPow3));
        return Integer.valueOf((Math.round(((float) Math.pow(fPow + ((fPow4 - fPow) * f11), 0.45454545454545453d)) * 255.0f) << 16) | (Math.round(f13 * 255.0f) << 24) | (Math.round(((float) Math.pow(fPow5, 0.45454545454545453d)) * 255.0f) << 8) | Math.round(((float) Math.pow(fPow6, 0.45454545454545453d)) * 255.0f));
    }
}
