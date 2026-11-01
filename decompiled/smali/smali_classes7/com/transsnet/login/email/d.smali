.class public final synthetic Lcom/transsnet/login/email/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/activity/result/a;


# instance fields
.field public final synthetic a:Lcom/transsnet/login/email/LoginEmailFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/login/email/LoginEmailFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/login/email/d;->a:Lcom/transsnet/login/email/LoginEmailFragment;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/transsnet/login/email/d;->a:Lcom/transsnet/login/email/LoginEmailFragment;

    check-cast p1, Landroidx/activity/result/ActivityResult;

    invoke-static {v0, p1}, Lcom/transsnet/login/email/LoginEmailFragment;->h0(Lcom/transsnet/login/email/LoginEmailFragment;Landroidx/activity/result/ActivityResult;)V

    return-void
.end method
