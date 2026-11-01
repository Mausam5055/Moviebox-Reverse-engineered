package com.cloud.tmc.miniapp.prepare.controller;

import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import com.cloud.tmc.integration.model.AppModel;
import com.cloud.tmc.integration.model.PrepareContext;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.miniapp.prepare.controller.OooO.OooO0OO;
import com.cloud.tmc.miniapp.prepare.steps.OooOOO;
import com.cloud.tmc.miniapp.prepare.steps.OooOOO0;
import com.cloud.tmc.miniapp.prepare.steps.OooOOOO;
import com.cloud.tmc.miniapp.prepare.steps.OooOo00;
import com.cloud.tmc.miniapp.prepare.steps.Oooo0;
import com.cloud.tmc.miniapp.prepare.steps.Oooo000;
import com.cloud.tmc.miniapp.prepare.steps.PrepareException;
import com.cloud.tmc.miniapp.prepare.steps.UpdateStep;
import com.cloud.tmc.miniapp.prepare.steps.o000oOoO;
import com.cloud.tmc.miniapp.prepare.steps.o00Oo0;
import com.cloud.tmc.miniapp.prepare.steps.o00Ooo;
import com.cloud.tmc.miniapp.prepare.steps.o0OoOo0;
import com.cloud.tmc.miniapp.prepare.steps.oo000o;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.ArrayBlockingQueue;

/* JADX INFO: loaded from: classes3.dex */
@Keep
public abstract class BasePrepareController implements PrepareController, OooO.OooO0O0 {
    private static final String TAG = "Tmcresource:PrepareController";
    public o0OoOo0 currentExecutingStep;
    private o0OoOo0 pendingAfterStep;
    public Queue<o0OoOo0> steps;
    private Set<o0OoOo0> interceptedBeforeSteps = new HashSet();
    private PrepareController.Status status = PrepareController.Status.INIT;
    private boolean locked = false;
    private Object lockedKey = null;
    public List<o00Ooo> interceptors = Collections.EMPTY_LIST;
    public PrepareContext context = null;
    public o000oOoO callback = null;
    public boolean errorIntercepted = false;
    public OooO timer = null;

    public BasePrepareController() {
        ArrayBlockingQueue arrayBlockingQueue = new ArrayBlockingQueue(15);
        this.steps = arrayBlockingQueue;
        arrayBlockingQueue.add(new o00Oo0());
        this.steps.add(new com.cloud.tmc.miniapp.prepare.steps.OooO0OO());
        this.steps.add(new UpdateStep());
        this.steps.add(new oo000o());
        this.steps.add(new OooOOO());
        this.steps.add(new OooOOO0());
        this.steps.add(new OooOOOO());
        this.steps.add(new OooOo00());
        this.steps.add(Oooo0.OooO0O0());
        this.steps.add(Oooo0.OooO00o());
        this.steps.add(new com.cloud.tmc.miniapp.prepare.steps.commonres.OooO0O0());
        this.steps.add(new com.cloud.tmc.miniapp.prepare.steps.commonres.OooO00o());
        this.steps.add(new com.cloud.tmc.miniapp.prepare.steps.commonres.OooO0OO());
        this.steps.add(new Oooo000());
        this.steps.add(Oooo0.OooO0OO());
    }

    public BasePrepareController(o0OoOo0... o0oooo0Arr) {
        this.steps = new LinkedList(Arrays.asList(o0oooo0Arr));
    }

    private boolean interceptAfter(o0OoOo0 o0oooo0) {
        try {
            TmcLogger.d(TAG, "step " + o0oooo0.OooO0O0() + " interceptAfter");
            for (o00Ooo o00ooo : this.interceptors) {
                if (o00ooo.OooO00o(o0oooo0, this)) {
                    TmcLogger.d(TAG, "step " + o0oooo0.OooO0O0() + " intercepted after by " + o00ooo.getClass().getName());
                    return true;
                }
            }
            return false;
        } finally {
            o0oooo0.finish();
        }
    }

    private boolean interceptBefore(o0OoOo0 o0oooo0) {
        StringBuilder sbOooO00o = com.cloud.tmc.miniapp.OooO00o.OooO00o("step ");
        sbOooO00o.append(o0oooo0.OooO0O0());
        sbOooO00o.append(" interceptBefore");
        TmcLogger.d(TAG, sbOooO00o.toString());
        this.interceptedBeforeSteps.add(o0oooo0);
        for (o00Ooo o00ooo : this.interceptors) {
            if (o00ooo.OooO0O0(o0oooo0, this)) {
                StringBuilder sbOooO00o2 = com.cloud.tmc.miniapp.OooO00o.OooO00o("step ");
                sbOooO00o2.append(o0oooo0.OooO0O0());
                sbOooO00o2.append(" intercepted before by ");
                sbOooO00o2.append(o00ooo.getClass().getName());
                TmcLogger.d(TAG, sbOooO00o2.toString());
                return true;
            }
        }
        return false;
    }

    private boolean interceptOnError(PrepareException prepareException) {
        Iterator<o00Ooo> it = this.interceptors.iterator();
        while (it.hasNext()) {
            if (it.next().OooO00o(prepareException, this)) {
                return true;
            }
        }
        return false;
    }

    public void bindContext(PrepareContext prepareContext, o000oOoO o000oooo) {
        this.context = prepareContext;
        this.callback = o000oooo;
    }

    public OooO createTimer(OooO.OooO0O0 oooO0O0) {
        return new OooO(oooO0O0, new OooO.OooO00o());
    }

    @Override // com.cloud.tmc.miniapp.prepare.controller.PrepareController
    public void finish() {
        OooO.OooO0OO oooO0OO;
        TmcLogger.d(TAG, "finish");
        this.status = PrepareController.Status.FINISH;
        OooO oooO = this.timer;
        if (oooO != null && (oooO0OO = oooO.OooO0OO) != null) {
            oooO0OO.OooO0O0 = true;
            ((OooO.OooO00o) oooO.OooO0O0).OooO00o.removeCallbacks(oooO0OO);
        }
        o000oOoO o000oooo = this.callback;
        if (o000oooo != null) {
            o000oooo.OooO00o();
        }
        this.steps.clear();
    }

    public PrepareController.Status getStatus() {
        return this.status;
    }

    @Override // com.cloud.tmc.miniapp.prepare.controller.PrepareController
    public void lock(Object obj) {
        TmcLogger.d(TAG, "locked with key: " + obj);
        this.lockedKey = obj;
        this.locked = true;
    }

    @Override // com.cloud.tmc.miniapp.prepare.controller.PrepareController
    public void moveToError(PrepareException prepareException) {
        OooO.OooO0OO oooO0OO;
        if (!this.status.canContinue()) {
            this.errorIntercepted = true;
            return;
        }
        TmcLogger.e(TAG, "moveToError!", prepareException);
        unlock(this.lockedKey);
        this.errorIntercepted = false;
        if (interceptOnError(prepareException)) {
            this.errorIntercepted = true;
            return;
        }
        o000oOoO o000oooo = this.callback;
        if (o000oooo != null) {
            PrepareContext prepareContext = this.context;
            o000oooo.OooO00o(prepareContext == null ? null : prepareContext.getPrepareData(), prepareException);
        }
        this.locked = false;
        this.status = PrepareController.Status.ERROR;
        this.steps.clear();
        OooO oooO = this.timer;
        if (oooO == null || (oooO0OO = oooO.OooO0OO) == null) {
            return;
        }
        oooO0OO.OooO0O0 = true;
        ((OooO.OooO00o) oooO.OooO0O0).OooO00o.removeCallbacks(oooO0OO);
    }

    @Override // com.cloud.tmc.miniapp.prepare.controller.PrepareController
    public void moveToNext() {
        if (this.locked) {
            StringBuilder sbOooO00o = com.cloud.tmc.miniapp.OooO00o.OooO00o("controller locked by ");
            sbOooO00o.append(this.currentExecutingStep);
            sbOooO00o.append(" cannot moveToNext!");
            TmcLogger.e(TAG, sbOooO00o.toString());
            return;
        }
        if (!this.status.canContinue()) {
            StringBuilder sbOooO00o2 = com.cloud.tmc.miniapp.OooO00o.OooO00o("controller cannot moveToNext with status: ");
            sbOooO00o2.append(this.status);
            TmcLogger.e(TAG, sbOooO00o2.toString());
            return;
        }
        this.status = PrepareController.Status.EXECUTING;
        o0OoOo0 o0oooo0 = this.pendingAfterStep;
        if (o0oooo0 != null) {
            boolean zInterceptAfter = interceptAfter(o0oooo0);
            this.pendingAfterStep = null;
            if (zInterceptAfter) {
                return;
            }
        }
        o0OoOo0 o0oooo0Peek = this.steps.peek();
        if (o0oooo0Peek == null) {
            finish();
            return;
        }
        o0oooo0Peek.OooO00o(this, this.context, this.callback);
        this.currentExecutingStep = o0oooo0Peek;
        if (this.interceptedBeforeSteps.contains(o0oooo0Peek) || !interceptBefore(o0oooo0Peek)) {
            try {
                this.steps.poll();
                TmcLogger.d(TAG, "step " + o0oooo0Peek.OooO0O0() + " execute");
                this.pendingAfterStep = o0oooo0Peek;
                o0oooo0Peek.OooO0O0(this, this.context, this.callback);
                if (this.locked || o0oooo0Peek.OooO00o()) {
                    return;
                }
                if (this.status.canContinue()) {
                    this.pendingAfterStep = null;
                    if (interceptAfter(o0oooo0Peek)) {
                        return;
                    }
                    moveToNext();
                    return;
                }
                StringBuilder sbOooO00o3 = com.cloud.tmc.miniapp.OooO00o.OooO00o("step ");
                sbOooO00o3.append(o0oooo0Peek.OooO0O0());
                sbOooO00o3.append(" can't continue after execute. status: ");
                sbOooO00o3.append(this.status);
                TmcLogger.w(TAG, sbOooO00o3.toString());
            } catch (PrepareException e11) {
                TmcLogger.e(TAG, o0oooo0Peek.OooO0O0() + " execute error!", e11);
                moveToError(e11);
            }
        }
    }

    public void onGetAppInfo(@NonNull AppModel appModel) {
    }

    @Override // com.cloud.tmc.miniapp.prepare.controller.OooO.OooO0O0
    public void onTimeout(long j11) {
        moveToError(new PrepareException("3", "ERROR_TIMEOUT with elapsed: " + j11));
    }

    public void postTimeOut(long j11) {
        long jCurrentTimeMillis;
        if (this.timer == null) {
            this.timer = createTimer(this);
        }
        TmcLogger.d(TAG, "postTimeout " + j11);
        OooO oooO = this.timer;
        OooO.OooO0OO oooO0OO = oooO.OooO0OO;
        if (oooO0OO != null) {
            oooO0OO.OooO0O0 = true;
            jCurrentTimeMillis = oooO0OO.OooO00o;
            ((OooO.OooO00o) oooO.OooO0O0).OooO00o.removeCallbacks(oooO0OO);
        } else {
            jCurrentTimeMillis = System.currentTimeMillis();
        }
        OooO.OooO0OO oooO0OO2 = oooO.new OooO0OO(jCurrentTimeMillis);
        oooO.OooO0OO = oooO0OO2;
        ((OooO.OooO00o) oooO.OooO0O0).OooO00o.postDelayed(oooO0OO2, j11);
    }

    public void setInterceptors(@NonNull List<o00Ooo> list) {
        if (this.status != PrepareController.Status.INIT) {
            throw new IllegalStateException("You cannot set interceptor after execute");
        }
        ArrayList arrayList = new ArrayList(list);
        this.interceptors = arrayList;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((o00Ooo) it.next()).OooO00o(this.context, this.callback);
        }
    }

    @Override // com.cloud.tmc.miniapp.prepare.controller.PrepareController
    public void start() {
        moveToNext();
    }

    @Override // com.cloud.tmc.miniapp.prepare.controller.PrepareController
    public void unlock(Object obj) {
        if (this.locked) {
            TmcLogger.d(TAG, "unlocked with key: " + obj + ", lockedKey: " + this.lockedKey);
            if (obj != this.lockedKey) {
                return;
            }
            this.locked = false;
            this.lockedKey = null;
        }
    }
}
