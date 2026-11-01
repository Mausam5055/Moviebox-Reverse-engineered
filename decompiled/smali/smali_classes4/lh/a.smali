.class public final Llh/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llh/a$a;
    }
.end annotation


# static fields
.field public static final a:Llh/a$a;

.field private static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    new-instance v0, Llh/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Llh/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Llh/a;->a:Llh/a$a;

    const-string v16, "e"

    const-string v17, "f"

    const-string v2, "0"

    const-string v3, "1"

    const-string v4, "2"

    const-string v5, "3"

    const-string v6, "4"

    const-string v7, "5"

    const-string v8, "6"

    const-string v9, "7"

    const-string v10, "8"

    const-string v11, "9"

    const-string v12, "a"

    const-string v13, "b"

    const-string v14, "c"

    const-string v15, "d"

    filled-new-array/range {v2 .. v17}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Llh/a;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a()[Ljava/lang/String;
    .locals 1

    sget-object v0, Llh/a;->b:[Ljava/lang/String;

    return-object v0
.end method
