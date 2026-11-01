.class Landroidx/emoji2/text/j$b$a;
.super Landroid/database/ContentObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/emoji2/text/j$b;->f(Landroid/net/Uri;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/emoji2/text/j$b;


# direct methods
.method constructor <init>(Landroidx/emoji2/text/j$b;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Landroidx/emoji2/text/j$b$a;->a:Landroidx/emoji2/text/j$b;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    iget-object p1, p0, Landroidx/emoji2/text/j$b$a;->a:Landroidx/emoji2/text/j$b;

    invoke-virtual {p1}, Landroidx/emoji2/text/j$b;->d()V

    return-void
.end method
