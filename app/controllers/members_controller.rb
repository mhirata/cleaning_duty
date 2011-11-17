class MembersController < ApplicationController

  def index
    @members = Member.all

    respond_to do |format|
      format.html # index.html.erb
    end
  end

  def show
    @member = Member.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
    end
  end

  def new
    @member = Member.new

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  def edit
    @member = Member.find(params[:id])
  end

  def create
    @member = Member.new(params[:member])

    respond_to do |format|
      if @member.save
        format.html { redirect_to(@member, :notice => 'Member was successfully created.') }
      else
        format.html { render :action => "new" }
      end
    end
  end

  def update
    @member = Member.find(params[:id])

    respond_to do |format|
      if @member.update_attributes(params[:member])
        format.html { redirect_to(@member, :notice => 'Member was successfully updated.') }
      else
        format.html { render :action => "edit" }
      end
    end
  end

  def destroy
    @member = Member.find(params[:id])
    @member.destroy

    respond_to do |format|
      format.html { redirect_to(members_url) }
    end
  end
end
