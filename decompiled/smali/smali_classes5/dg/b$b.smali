.class public interface abstract Ldg/b$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldg/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldg/b$b$b;
    }
.end annotation


# static fields
.field public static final a:Ldg/b$b$b;

.field public static final b:Ldg/b$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ldg/b$b$b;->a:Ldg/b$b$b;

    sput-object v0, Ldg/b$b;->a:Ldg/b$b$b;

    new-instance v0, Ldg/b$b$a;

    invoke-direct {v0}, Ldg/b$b$a;-><init>()V

    sput-object v0, Ldg/b$b;->b:Ldg/b$b;

    return-void
.end method


# virtual methods
.method public abstract log(Ljava/lang/String;)V
.end method
