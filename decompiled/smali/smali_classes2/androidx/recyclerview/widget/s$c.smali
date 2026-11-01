.class public Landroidx/recyclerview/widget/s$c;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/recyclerview/widget/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private final a:Landroidx/recyclerview/widget/s$d;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/recyclerview/widget/s$c$a;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/s$c$a;-><init>(Landroidx/recyclerview/widget/s$c;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/s$c;->a:Landroidx/recyclerview/widget/s$d;

    return-void
.end method


# virtual methods
.method public a()Landroidx/recyclerview/widget/s$d;
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/s$c;->a:Landroidx/recyclerview/widget/s$d;

    return-object v0
.end method
