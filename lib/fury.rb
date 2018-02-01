class Fury

  attr_accessor :commands

  def initialize(cmd = nil)
    @commands = ((cmd.is_a?Array)? cmd : [cmd])
    @commands.flatten!
    @commands.compact!
  end

  def << (cmd)
    join unless (@commands.nil? || @commands.empty?)
    @commands << cmd
  end

  def queue(cmd)
    @commands << cmd
  end

  def join(separator = ';')
    @commands << separator
  end

  def execute(std_all=true)
    run_cmd(command,std_all)
  end

  def execute!(std_all=true)
    run_cmd(command, std_all) { reset_cmd! }
  end

  def self.run_now(cmds)
    self.new(cmds).execute!
  end

  def run_cmd(cmd, std_all = true, &reset_block)
    puts "#{cmd}"
    cmd_result =( std_all ? %x[#{cmd} 2>&1] : %x[#{cmd}])
    puts "output .... #{cmd_result}"
    reset_block.call if block_given?
    cmd_result
  end

  def reset_cmd!
    @commands.clear
  end

  private

  def command
    @commands.flatten!
    @commands.join(' ')
  end


end
