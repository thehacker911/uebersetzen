.class Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference$1;
.super Ljava/lang/Object;
.source "AppMultiSelectListPreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;->showDialog(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;


# direct methods
.method constructor <init>(Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference$1;->this$0:Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 149
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference$AppViewHolder;

    .line 150
    .local v0, holder:Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference$AppViewHolder;
    iget-object v2, v0, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference$AppViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 151
    .local v1, isChecked:Z
    :goto_0
    iget-object v2, v0, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference$AppViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 152
    if-eqz v1, :cond_1

    .line 153
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference$1;->this$0:Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;

    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference$1;->this$0:Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;

    #getter for: Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;->mNewValues:Ljava/util/Set;
    invoke-static {v3}, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;->access$200(Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;)Ljava/util/Set;

    move-result-object v3

    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference$1;->this$0:Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;

    #getter for: Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;
    invoke-static {v4}, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;->access$100(Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;)[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, p3

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;->access$076(Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;I)Z

    .line 157
    :goto_1
    return-void

    .line 150
    .end local v1           #isChecked:Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 155
    .restart local v1       #isChecked:Z
    :cond_1
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference$1;->this$0:Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;

    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference$1;->this$0:Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;

    #getter for: Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;->mNewValues:Ljava/util/Set;
    invoke-static {v3}, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;->access$200(Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;)Ljava/util/Set;

    move-result-object v3

    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference$1;->this$0:Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;

    #getter for: Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;
    invoke-static {v4}, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;->access$100(Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;)[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, p3

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;->access$076(Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;I)Z

    goto :goto_1
.end method
