.class public Lcom/google/firebase/messaging/FirebaseMessagingRegistrar;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# static fields
.field private static final LIBRARY_NAME:Ljava/lang/String; = "fire-fcm"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lmb/b0;Lmb/e;)Lcom/google/firebase/messaging/FirebaseMessaging;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/firebase/messaging/FirebaseMessagingRegistrar;->lambda$getComponents$0(Lmb/b0;Lmb/e;)Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getComponents$0(Lmb/b0;Lmb/e;)Lcom/google/firebase/messaging/FirebaseMessaging;
    .locals 9

    new-instance v8, Lcom/google/firebase/messaging/FirebaseMessaging;

    const-class v0, Lcom/google/firebase/f;

    invoke-interface {p1, v0}, Lmb/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/firebase/f;

    const-class v0, Lhc/a;

    invoke-interface {p1, v0}, Lmb/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    const-class v0, Lxc/i;

    invoke-interface {p1, v0}, Lmb/e;->f(Ljava/lang/Class;)Lic/b;

    move-result-object v3

    const-class v0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfo;

    invoke-interface {p1, v0}, Lmb/e;->f(Ljava/lang/Class;)Lic/b;

    move-result-object v4

    const-class v0, Ljc/e;

    invoke-interface {p1, v0}, Lmb/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljc/e;

    invoke-interface {p1, p0}, Lmb/e;->g(Lmb/b0;)Lic/b;

    move-result-object v6

    const-class p0, Lfc/d;

    invoke-interface {p1, p0}, Lmb/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v7, p0

    check-cast v7, Lfc/d;

    const/4 v2, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/firebase/messaging/FirebaseMessaging;-><init>(Lcom/google/firebase/f;Lhc/a;Lic/b;Lic/b;Ljc/e;Lic/b;Lfc/d;)V

    return-object v8
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 4
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmb/c;",
            ">;"
        }
    .end annotation

    const-class v0, Lzb/b;

    const-class v1, Lr8/i;

    invoke-static {v0, v1}, Lmb/b0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lmb/b0;

    move-result-object v0

    const-class v1, Lcom/google/firebase/messaging/FirebaseMessaging;

    invoke-static {v1}, Lmb/c;->c(Ljava/lang/Class;)Lmb/c$b;

    move-result-object v1

    const-string v2, "fire-fcm"

    invoke-virtual {v1, v2}, Lmb/c$b;->h(Ljava/lang/String;)Lmb/c$b;

    move-result-object v1

    const-class v3, Lcom/google/firebase/f;

    invoke-static {v3}, Lmb/r;->k(Ljava/lang/Class;)Lmb/r;

    move-result-object v3

    invoke-virtual {v1, v3}, Lmb/c$b;->b(Lmb/r;)Lmb/c$b;

    move-result-object v1

    const-class v3, Lhc/a;

    invoke-static {v3}, Lmb/r;->h(Ljava/lang/Class;)Lmb/r;

    move-result-object v3

    invoke-virtual {v1, v3}, Lmb/c$b;->b(Lmb/r;)Lmb/c$b;

    move-result-object v1

    const-class v3, Lxc/i;

    invoke-static {v3}, Lmb/r;->i(Ljava/lang/Class;)Lmb/r;

    move-result-object v3

    invoke-virtual {v1, v3}, Lmb/c$b;->b(Lmb/r;)Lmb/c$b;

    move-result-object v1

    const-class v3, Lcom/google/firebase/heartbeatinfo/HeartBeatInfo;

    invoke-static {v3}, Lmb/r;->i(Ljava/lang/Class;)Lmb/r;

    move-result-object v3

    invoke-virtual {v1, v3}, Lmb/c$b;->b(Lmb/r;)Lmb/c$b;

    move-result-object v1

    const-class v3, Ljc/e;

    invoke-static {v3}, Lmb/r;->k(Ljava/lang/Class;)Lmb/r;

    move-result-object v3

    invoke-virtual {v1, v3}, Lmb/c$b;->b(Lmb/r;)Lmb/c$b;

    move-result-object v1

    invoke-static {v0}, Lmb/r;->j(Lmb/b0;)Lmb/r;

    move-result-object v3

    invoke-virtual {v1, v3}, Lmb/c$b;->b(Lmb/r;)Lmb/c$b;

    move-result-object v1

    const-class v3, Lfc/d;

    invoke-static {v3}, Lmb/r;->k(Ljava/lang/Class;)Lmb/r;

    move-result-object v3

    invoke-virtual {v1, v3}, Lmb/c$b;->b(Lmb/r;)Lmb/c$b;

    move-result-object v1

    new-instance v3, Lcom/google/firebase/messaging/c0;

    invoke-direct {v3, v0}, Lcom/google/firebase/messaging/c0;-><init>(Lmb/b0;)V

    invoke-virtual {v1, v3}, Lmb/c$b;->f(Lmb/h;)Lmb/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lmb/c$b;->c()Lmb/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lmb/c$b;->d()Lmb/c;

    move-result-object v0

    const-string v1, "25.0.1"

    invoke-static {v2, v1}, Lxc/h;->b(Ljava/lang/String;Ljava/lang/String;)Lmb/c;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Lmb/c;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
