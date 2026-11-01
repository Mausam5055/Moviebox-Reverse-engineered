.class public final synthetic Luv/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;

.field public final synthetic b:Ljava/lang/CharSequence;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luv/d;->a:Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;

    iput-object p2, p0, Luv/d;->b:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Luv/d;->a:Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;

    iget-object v1, p0, Luv/d;->b:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->d(Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;Ljava/lang/CharSequence;)V

    return-void
.end method
