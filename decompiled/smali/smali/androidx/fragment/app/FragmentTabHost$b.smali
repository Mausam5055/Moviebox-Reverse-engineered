.class final Landroidx/fragment/app/FragmentTabHost$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/FragmentTabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/Class;

.field final c:Landroid/os/Bundle;

.field d:Landroidx/fragment/app/Fragment;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/FragmentTabHost$b;->a:Ljava/lang/String;

    iput-object p2, p0, Landroidx/fragment/app/FragmentTabHost$b;->b:Ljava/lang/Class;

    iput-object p3, p0, Landroidx/fragment/app/FragmentTabHost$b;->c:Landroid/os/Bundle;

    return-void
.end method
