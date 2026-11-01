.class public final synthetic Lcom/transsion/audio/adapter/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/audio/adapter/c;

.field public final synthetic b:Lcom/transsion/baselib/db/audio/AudioBean;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/adapter/c;Lcom/transsion/baselib/db/audio/AudioBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/audio/adapter/a;->a:Lcom/transsion/audio/adapter/c;

    iput-object p2, p0, Lcom/transsion/audio/adapter/a;->b:Lcom/transsion/baselib/db/audio/AudioBean;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/adapter/a;->a:Lcom/transsion/audio/adapter/c;

    iget-object v1, p0, Lcom/transsion/audio/adapter/a;->b:Lcom/transsion/baselib/db/audio/AudioBean;

    invoke-static {v0, v1, p1}, Lcom/transsion/audio/adapter/c;->C1(Lcom/transsion/audio/adapter/c;Lcom/transsion/baselib/db/audio/AudioBean;Landroid/view/View;)V

    return-void
.end method
