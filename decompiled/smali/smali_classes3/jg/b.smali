.class public final synthetic Ljg/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(JLkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Ljg/b;->a:J

    iput-object p3, p0, Ljg/b;->b:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-wide v0, p0, Ljg/b;->a:J

    iget-object v2, p0, Ljg/b;->b:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1, v2, p1}, Ljg/c;->a(JLkotlin/jvm/functions/Function1;Landroid/view/View;)V

    return-void
.end method
