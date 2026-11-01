.class public final synthetic Ljt/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/shorttv_pugc/base/widget/expand/ExpandView;

.field public final synthetic b:Ljava/lang/CharSequence;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/shorttv_pugc/base/widget/expand/ExpandView;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljt/d;->a:Lcom/transsion/shorttv_pugc/base/widget/expand/ExpandView;

    iput-object p2, p0, Ljt/d;->b:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Ljt/d;->a:Lcom/transsion/shorttv_pugc/base/widget/expand/ExpandView;

    iget-object v1, p0, Ljt/d;->b:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcom/transsion/shorttv_pugc/base/widget/expand/ExpandView;->c(Lcom/transsion/shorttv_pugc/base/widget/expand/ExpandView;Ljava/lang/CharSequence;)V

    return-void
.end method
