.class public final synthetic Lgc/b;
.super Ljava/lang/Object;

# interfaces
.implements Lmb/h;


# instance fields
.field public final synthetic a:Lmb/b0;


# direct methods
.method public synthetic constructor <init>(Lmb/b0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgc/b;->a:Lmb/b0;

    return-void
.end method


# virtual methods
.method public final a(Lmb/e;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lgc/b;->a:Lmb/b0;

    invoke-static {v0, p1}, Lcom/google/firebase/heartbeatinfo/a;->e(Lmb/b0;Lmb/e;)Lcom/google/firebase/heartbeatinfo/a;

    move-result-object p1

    return-object p1
.end method
