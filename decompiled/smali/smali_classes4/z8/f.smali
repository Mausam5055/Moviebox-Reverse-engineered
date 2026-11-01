.class public final synthetic Lz8/f;
.super Ljava/lang/Object;

# interfaces
.implements Lb9/a$a;


# instance fields
.field public final synthetic a:La9/d;


# direct methods
.method public synthetic constructor <init>(La9/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz8/f;->a:La9/d;

    return-void
.end method


# virtual methods
.method public final execute()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lz8/f;->a:La9/d;

    invoke-interface {v0}, La9/d;->B()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
