.class public final Lv8/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv8/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Lv8/d;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lv8/b$a;->a:Lv8/d;

    return-void
.end method


# virtual methods
.method public a()Lv8/b;
    .locals 2

    new-instance v0, Lv8/b;

    iget-object v1, p0, Lv8/b$a;->a:Lv8/d;

    invoke-direct {v0, v1}, Lv8/b;-><init>(Lv8/d;)V

    return-object v0
.end method

.method public b(Lv8/d;)Lv8/b$a;
    .locals 0

    iput-object p1, p0, Lv8/b$a;->a:Lv8/d;

    return-object p0
.end method
