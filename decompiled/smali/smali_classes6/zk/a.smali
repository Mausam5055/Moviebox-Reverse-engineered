.class public final synthetic Lzk/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lzk/b;


# direct methods
.method public synthetic constructor <init>(Lzk/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzk/a;->a:Lzk/b;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lzk/a;->a:Lzk/b;

    invoke-static {v0, p1}, Lzk/b;->a(Lzk/b;Landroid/view/View;)V

    return-void
.end method
