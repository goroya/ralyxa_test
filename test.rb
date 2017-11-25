require 'logger'

log = Logger.new('log.log')


def do_log(log)
  log.debug('do_log1') { "debug" }
  log.info('do_log2') { "info" }
  log.warn('do_log3') { "warn" }
  log.error('do_log4') { "error" }
  log.fatal('do_log6') { "fatal" }
  log.unknown('do_log7') { "unknown" }
end

log.level = Logger::DEBUG	# Default.
do_log(log)
