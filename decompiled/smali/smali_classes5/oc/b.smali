.class public abstract Loc/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Loc/b$b;
    }
.end annotation


# static fields
.field private static final a:Loc/a;

.field private static volatile b:Loc/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Loc/b$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Loc/b$b;-><init>(Loc/b$a;)V

    sput-object v0, Loc/b;->a:Loc/a;

    sput-object v0, Loc/b;->b:Loc/a;

    return-void
.end method

.method public static a()Loc/a;
    .locals 1

    sget-object v0, Loc/b;->b:Loc/a;

    return-object v0
.end method
