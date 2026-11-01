.class public final synthetic Lcom/google/firebase/sessions/k;
.super Ljava/lang/Object;

# interfaces
.implements Lmb/h;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lmb/e;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->e(Lmb/e;)Lcom/google/firebase/sessions/SessionGenerator;

    move-result-object p1

    return-object p1
.end method
