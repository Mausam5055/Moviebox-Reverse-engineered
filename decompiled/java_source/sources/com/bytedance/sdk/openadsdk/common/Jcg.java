package com.bytedance.sdk.openadsdk.common;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.Button;
import com.bytedance.sdk.component.utils.ib;
import com.bytedance.sdk.openadsdk.utils.FPG;

/* JADX INFO: loaded from: classes2.dex */
public class Jcg extends Button {
    public Jcg(Context context) {
        super(context);
        Sj();
    }

    private void Sj() {
        setId(com.bytedance.sdk.openadsdk.utils.Zq.mZN);
        Context context = getContext();
        setLayoutParams(new ViewGroup.LayoutParams(-1, FPG.sP(context, 48.0f)));
        setBackground(com.bytedance.sdk.openadsdk.utils.TEQ.Sj(context, "tt_browser_download_selector"));
        setText(ib.Sj(context, "tt_video_download_apk"));
        setTextColor(-1);
        setTextSize(2, 16.0f);
    }
}
