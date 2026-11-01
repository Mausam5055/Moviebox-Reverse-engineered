package com.cloud.tmc.miniapp.action;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;

/* JADX INFO: loaded from: classes3.dex */
public interface ActivityAction {

    public static final class DefaultImpls {
        public static Activity getActivity(ActivityAction activityAction) {
            Context context = activityAction.getContext();
            while (!(context instanceof Activity)) {
                if (!(context instanceof ContextWrapper) || (context = ((ContextWrapper) context).getBaseContext()) == null) {
                    return null;
                }
            }
            return (Activity) context;
        }
    }

    Activity getActivity();

    Context getContext();
}
