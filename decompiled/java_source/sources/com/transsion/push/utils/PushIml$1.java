package com.transsion.push.utils;

import android.content.Intent;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.transsion.push.bean.PushMessage;
import com.transsion.push.tracker.Tracker;
import com.transsion.pushui.activity.TransparentActivity;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes6.dex */
class PushIml$1 implements Runnable {
    final /* synthetic */ PushMessage val$message;

    PushIml$1(PushMessage pushMessage) {
        this.val$message = pushMessage;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            Intent intent = new Intent();
            intent.putExtra("message", com.transsion.json.b.b(this.val$message));
            intent.setClassName(this.val$message.packageName, TransparentActivity.class.getName());
            intent.setFlags(ASTNode.DEOP);
            qk.a.a().startActivity(intent);
            Tracker tracker = Tracker.getInstance();
            PushMessage pushMessage = this.val$message;
            tracker.trackMessage(pushMessage.messageId, pushMessage.type, pushMessage.timeStamp, NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS, 0);
        } catch (Exception e11) {
            PushLogUtils.LOG.i(e11);
        }
    }
}
