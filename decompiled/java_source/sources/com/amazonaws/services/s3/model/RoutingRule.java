package com.amazonaws.services.s3.model;

/* JADX INFO: loaded from: classes2.dex */
public class RoutingRule {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    RoutingRuleCondition f18803a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    RedirectRule f18804b;

    public void a(RoutingRuleCondition routingRuleCondition) {
        this.f18803a = routingRuleCondition;
    }

    public void b(RedirectRule redirectRule) {
        this.f18804b = redirectRule;
    }
}
