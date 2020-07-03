from flask import Flask
from flask import request
import random
import json

app = Flask(__name__)
runs = set()

@app.route('/api/2.0/jobs/runs/submit', methods=['POST'])
def job_runs_submit():
  body = request.get_json()
  if (body):
    if not ('run_name' in body):
      return {'error': 'run_name is invalid'}, 400
    if not ('existing_cluster_id' in body):
      return {'error': 'existing_cluster_id is invalid'}, 400
    if not ('timeout_seconds' in body):
      return {'error': 'timeout_seconds is invalid'}, 400
    if not ('notebook_task' in body):
      return {'error': 'notebook_task is invalid'}, 400
    random.seed()
    run_id = random.randint(1, 999)
    runs.add(run_id)
    return {'run_id': run_id}
  return {'error': 'body is invalid'}, 400

@app.route('/api/2.0/jobs/runs/get')
def jobs_runs_get():
  run_id = request.args.get('run_id', '')
  if not (run_id) or (run_id == ''):
    return {'error': 'run_id is invalid'}, 400
  if not int(run_id) in runs:
    return {'error': 'run_id not found'}, 404
  return {
    'run_id': int(run_id),
    'state': {
      'life_cycle_state': 'RUNNING'
    }
  }
