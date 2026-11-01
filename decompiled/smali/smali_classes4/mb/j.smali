.class public interface abstract Lmb/j;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lmb/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmb/i;

    invoke-direct {v0}, Lmb/i;-><init>()V

    sput-object v0, Lmb/j;->a:Lmb/j;

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/google/firebase/components/ComponentRegistrar;)Ljava/util/List;
.end method
