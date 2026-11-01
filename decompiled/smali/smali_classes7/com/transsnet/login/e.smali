.class public final synthetic Lcom/transsnet/login/e;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/transsnet/login/LoginLikeActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/login/LoginLikeActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/login/e;->a:Lcom/transsnet/login/LoginLikeActivity;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/login/e;->a:Lcom/transsnet/login/LoginLikeActivity;

    invoke-static {v0}, Lcom/transsnet/login/LoginLikeActivity;->g0(Lcom/transsnet/login/LoginLikeActivity;)Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    move-result-object v0

    return-object v0
.end method
