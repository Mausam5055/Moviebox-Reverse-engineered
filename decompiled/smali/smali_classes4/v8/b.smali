.class public final Lv8/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv8/b$a;
    }
.end annotation


# static fields
.field private static final b:Lv8/b;


# instance fields
.field private final a:Lv8/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lv8/b$a;

    invoke-direct {v0}, Lv8/b$a;-><init>()V

    invoke-virtual {v0}, Lv8/b$a;->a()Lv8/b;

    move-result-object v0

    sput-object v0, Lv8/b;->b:Lv8/b;

    return-void
.end method

.method constructor <init>(Lv8/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv8/b;->a:Lv8/d;

    return-void
.end method

.method public static b()Lv8/b$a;
    .locals 1

    new-instance v0, Lv8/b$a;

    invoke-direct {v0}, Lv8/b$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()Lv8/d;
    .locals 1

    iget-object v0, p0, Lv8/b;->a:Lv8/d;

    return-object v0
.end method
