.class public final synthetic Lcom/transsion/baseui/activity/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/baseui/activity/BaseNewActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/baseui/activity/BaseNewActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/baseui/activity/i;->a:Lcom/transsion/baseui/activity/BaseNewActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/baseui/activity/i;->a:Lcom/transsion/baseui/activity/BaseNewActivity;

    invoke-static {v0}, Lcom/transsion/baseui/activity/BaseNewActivity;->b0(Lcom/transsion/baseui/activity/BaseNewActivity;)V

    return-void
.end method
